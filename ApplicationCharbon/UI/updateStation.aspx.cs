using ApplicationCharbon.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ApplicationCharbon.UI.Station
{
    public partial class updateStation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            
        }
        protected void EditButton_Station_Click(object sender, EventArgs e)
        {
            // Récupérer les valeurs des champs du formulaire
            int IdStation = Int32.Parse(Request.Form["id_station"]);


            string StNom = nomstation.Text;
            string StAdresse = Adress.Text;
            string StTelephone = phone.Text;

            // Récupérer le CS existant de la base de données
            using (var db = new CharbonContext())
            {
                Models.Station existingStation = db.Station.Find(IdStation);

                // Mettre à jour les propriétés du CS avec les nouvelles valeurs
                existingStation.nom_station = StNom;
                existingStation.adresse = StAdresse;
                existingStation.telephone = StTelephone;

                // Enregistrer les modifications dans la base de données
                db.Entry(existingStation).State = EntityState.Modified;
                db.SaveChanges();
            }

            // Rediriger vers la page d'index après une mise à jour réussie du CS
            // Response.Redirect("index.aspx#station");
            Response.Redirect("Station.aspx");
        }

    }
}