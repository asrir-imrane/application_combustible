using ApplicationCharbon.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ApplicationCharbon.UI.Station
{
    public partial class Station : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void AddButton_Station_Click(object sender, EventArgs e)
        {
            // Récupérer les valeurs des champs du formulaire
            string StNom = nomstation.Text;
            string StAdresse = Adress.Text;
            string StTelephone = phone.Text;

            // Créer un nouvel objet CS avec les valeurs de champ de formulaire
            Models.Station newStation = new Models.Station
            {
                nom_station = StNom,
                adresse = StAdresse,
                telephone = StTelephone
            };

            // Ajouter le nouveau CS à la base de données
            using (var db = new CharbonContext())
            {
                db.Station.Add(newStation);
                db.SaveChanges();

            }
            // Response.Redirect("index.aspx#station");
            Response.Redirect("Station.aspx");
        }
    }
}