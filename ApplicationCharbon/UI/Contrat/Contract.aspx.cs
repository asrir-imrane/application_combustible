using ApplicationCharbon.Models;
using ApplicationCharbon.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ApplicationCharbon.UI
{
    public partial class Contract : System.Web.UI.Page
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

        protected void AddButton_Contrat_Click(object sender, EventArgs e)
        {


            int IdAo = Convert.ToInt32(idAppOffreListe.SelectedValue);
            string typeContrat = TypeListe.SelectedValue;
            int idFournisseur = Convert.ToInt32(FournisseurListe.SelectedValue);



            string nomContrat = nom_contrat.Value;


            string nbrCargaisons = nbr_cargaison.Text;
            int nbrCg = int.Parse(nbrCargaisons);

            string quantitetotal = quantiteTotal.Text;
            decimal qtTotal = decimal.Parse(quantitetotal);


            DateTime dateCreation = DateTime.Parse(date_creation.Value);
            DateTime dateDebut = DateTime.Parse(date_debut.Value);
            DateTime dateFin = DateTime.Parse(date_fin.Value);

            string Statut = Request.Form["status"];

            // Créer un nouvel objet CS avec les valeurs de champ de formulaire
            Contrat newContrat = new Contrat
            {
                nom_contrat = nomContrat,
                id_appOffre = IdAo
            };
            // Ajouter le nouveau CS à la base de données
            using (var db = new CharbonContext())
            {
                db.Contrat.Add(newContrat);
                db.SaveChanges();

            }

            Contrat_Details newContratD = new Contrat_Details
            {
                id_contrat = newContrat.id_contrat,
                id_fournisseur = idFournisseur,
                type = typeContrat,
                nbr_cargaisons = nbrCg,
                quantite_total = qtTotal,
                date_creation = dateCreation,
                date_debut = dateDebut,
                date_fin = dateFin,
                statut = Statut
            };

            // Ajouter le nouveau CS à la base de données
            using (var db = new CharbonContext())
            {
                db.Contrat_Details.Add(newContratD);
                db.SaveChanges();

            }

            Response.Redirect("Contract.aspx");

        }
    }
}