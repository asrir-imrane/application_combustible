using ApplicationCharbon.Models;
using ApplicationCharbon.Services;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ApplicationCharbon.UI
{
    public partial class updateContract : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                FillFournisseurDropdown();
                FillidAppelOffreDropdown();
                FillTypeDropdown();
            }
        }



        private void FillFournisseurDropdown()
        {
            using (var contexte = new CharbonContext())
            {
                var NomFournisseur = contexte.Fournisseur.ToList();

                // Bind the dropdown control to the list of Origine objects
                FournisseurListe.DataSource = NomFournisseur;
                FournisseurListe.DataTextField = "nom_fournisseur";
                FournisseurListe.DataValueField = "id_fournisseur";
                FournisseurListe.DataBind();
            }
        }
        private void FillidAppelOffreDropdown()
        {
            using (var contexte = new CharbonContext())
            {
                var idAppelOffre = contexte.Appel_Offre.ToList();

                // Bind the dropdown control to the list of Origine objects
                idAppOffreListe.DataSource = idAppelOffre;
                idAppOffreListe.DataTextField = "id_appOffre";
                idAppOffreListe.DataValueField = "id_appOffre";
                idAppOffreListe.DataBind();
            }
        }
        private void FillTypeDropdown()
        {
            using (var contexte = new CharbonContext())
            {
                var NomType = contexte.Types.ToList();

                // Bind the dropdown control to the list of Origine objects
                TypeListe.DataSource = NomType;
                TypeListe.DataTextField = "type";
                TypeListe.DataValueField = "type";
                TypeListe.DataBind();
            }
        }

        protected void EditButton_Contrat_Click(object sender, EventArgs e)
        {
            // Récupérer les valeurs des champs du formulaire
            string IdContratED = idContratED.Value;
            int IdCt = int.Parse(IdContratED);

            string IdcontDetailsED = idContratDetailED.Value;
            int IdCtDetails = int.Parse(IdcontDetailsED);

            int IdAo = Convert.ToInt32(idAppOffreListe.SelectedValue);
            string typeContrat = TypeListe.SelectedValue;
            int idFournisseur = Convert.ToInt32(FournisseurListe.SelectedValue);



            string nomContrat = nom_contrat.Value;


            string nbrCargaisons = nbr_cargaisons.Value;
            int nbrCg = int.Parse(nbrCargaisons);

            string quantiteTotal = quantite_total.Value;
            decimal qtTotal = decimal.Parse(quantiteTotal);


            DateTime dateCreation = DateTime.Parse(date_creation.Value);
            DateTime dateDebut = DateTime.Parse(date_debut.Value);
            DateTime dateFin = DateTime.Parse(date_fin.Value);

            string Statut = Request.Form["status"];

            // Récupérer le CS existant de la base de données
            using (var db = new CharbonContext())
            {
                Contrat existingContrat = db.Contrat.Find(IdCt);

                // Mettre à jour les propriétés du CS avec les nouvelles valeurs
                existingContrat.nom_contrat = nomContrat;
                existingContrat.id_appOffre = IdAo;

                // Enregistrer les modifications dans la base de données
                db.Entry(existingContrat).State = EntityState.Modified;




                Contrat_Details existingContratDetails = db.Contrat_Details.Find(IdCtDetails);

                // Mettre à jour les propriétés du CS avec les nouvelles valeurs
                existingContratDetails.id_fournisseur = idFournisseur;
                existingContratDetails.nbr_cargaisons = nbrCg;
                existingContratDetails.type = typeContrat;
                existingContratDetails.quantite_total = qtTotal;
                existingContratDetails.statut = Statut;
                existingContratDetails.date_creation = dateCreation;
                existingContratDetails.date_debut = dateDebut;
                existingContratDetails.date_fin = dateFin;

                // Enregistrer les modifications dans la base de données
                db.Entry(existingContratDetails).State = EntityState.Modified;

                db.SaveChanges();
            }
            
            Response.Redirect("Contract.aspx");
        }
    }
}