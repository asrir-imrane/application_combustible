using ApplicationCharbon.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ApplicationCharbon.UI
{
    public partial class updateAppelOffre : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                FillTypeDropdown();
                FillidPlanningDropdown();
            }
        }



        private void FillTypeDropdown()
        {
            using (var contexte = new CharbonContext())
            {
                var NomType = contexte.Types.ToList();

                // Bind the dropdown control to the list of Origine objects
                nomTypeListe.DataSource = NomType;
                nomTypeListe.DataTextField = "type";
                nomTypeListe.DataValueField = "type";
                nomTypeListe.DataBind();
            }
        }
        private void FillidPlanningDropdown()
        {
            using (var contexte = new CharbonContext())
            {
                var idPlanning = contexte.Planing_Previsionnel.ToList();

                // Bind the dropdown control to the list of Origine objects
                idPlanningListe.DataSource = idPlanning;
                idPlanningListe.DataTextField = "id_planning";
                idPlanningListe.DataValueField = "id_planning";
                idPlanningListe.DataBind();
            }
        }


        protected void EditButton_AO_Click(object sender, EventArgs e)
        {

            string IdAppOED = id_appOffreED.Value;
            int IdAO = int.Parse(IdAppOED);

            string Tp = nomTypeListe.SelectedValue;
            int idplanning = Convert.ToInt32(idPlanningListe.SelectedValue);
            string Tonnage = tonnage.Value;
            float Tng = float.Parse(Tonnage);

            string nbrBateaux = nbr_bateaux.Value;
            int Nbateau = int.Parse(nbrBateaux);

            DateTime dateEmission = DateTime.Parse(date_Emission.Value);
            DateTime dateLivraison = DateTime.Parse(date_livraison.Value);
            DateTime dateCreation = DateTime.Parse(date_creation.Value);

            string Observation = observation.Value;
            string Statut = Request.Form["status"];



            // Créer un nouvel objet AO avec les valeurs de champ de formulaire
            Appel_Offre newAO = new Appel_Offre
            {
                id_planning = idplanning,
                tonnage = Tng,
                date_Emission = dateEmission,
                date_livraison = dateLivraison,
                date_creation = dateCreation,
                nbr_bateaux = Nbateau,
                observation = Observation,
                type = Tp,
                statut = Statut
            };


           






            // Récupérer le CS existant de la base de données
            using (var db = new CharbonContext())
            {
                Appel_Offre existingAO = db.Appel_Offre.Find(IdAO);

                // Mettre à jour les propriétés du CS avec les nouvelles valeurs
                existingAO.id_planning = idplanning;
                existingAO.type = Tp;
                existingAO.tonnage = Tng;
                existingAO.nbr_bateaux = Nbateau;
                existingAO.date_creation = dateCreation;
                existingAO.date_Emission = dateEmission;
                existingAO.date_livraison = dateLivraison;
                existingAO.observation = Observation;
                existingAO.statut = Statut;

                // Enregistrer les modifications dans la base de données
                db.Entry(existingAO).State = EntityState.Modified;
                db.SaveChanges();
            }

          
            Response.Redirect("AppelOffre.aspx");
        }
    }
}