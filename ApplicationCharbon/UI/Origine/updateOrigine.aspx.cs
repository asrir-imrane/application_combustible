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
    public partial class updateOrigine : System.Web.UI.Page
    {
        protected void EditButton_Origine_Click(object sender, EventArgs e)
        {
            // Récupérer les valeurs des champs du formulaire
            string IdOrigine = id_origineED.Value;
            int IdOg = int.Parse(IdOrigine);

            string OgNom = nom_origineED.Value;

            // Récupérer le CS existant de la base de données
            using (var db = new CharbonContext())
            {
                Origine existingOrigine = db.Origine.Find(IdOg);

                // Mettre à jour les propriétés du CS avec les nouvelles valeurs
                existingOrigine.nom_origine = OgNom;

                // Enregistrer les modifications dans la base de données
                db.Entry(existingOrigine).State = EntityState.Modified;
                db.SaveChanges();
            }

            // Rediriger vers la page d'index après une mise à jour réussie du CS
            // Response.Redirect("index.aspx#station");
            Response.Redirect("Origin.aspx");
        }
    }
}