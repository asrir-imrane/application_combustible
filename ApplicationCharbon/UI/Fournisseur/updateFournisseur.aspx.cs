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
    public partial class updateFournisseur : System.Web.UI.Page
    {
        protected void EditButton_Fournisseur_Click(object sender, EventArgs e)
        {
            // Récupérer les valeurs des champs du formulaire
            int IdFournisseur = Int32.Parse(Request.Form["id_fournisseurED"]);
            string FrNom = nom_fournisseurED.Value;

            // Récupérer le CS existant de la base de données
            using (var db = new CharbonContext())
            {
                Fournisseur existingFournisseur = db.Fournisseur.Find(IdFournisseur);

                // Mettre à jour les propriétés du CS avec les nouvelles valeurs
                existingFournisseur.nom_fournisseur = FrNom;

                // Enregistrer les modifications dans la base de données
                db.Entry(existingFournisseur).State = EntityState.Modified;
                db.SaveChanges();
            }

            // Rediriger l'utilisateur vers la même page
            Response.Redirect("Fourni.aspx");
        }
        protected void Annuler_Click(object sender, EventArgs e)
        {
            Response.Redirect("Fourni.aspx");
        }
    }
}