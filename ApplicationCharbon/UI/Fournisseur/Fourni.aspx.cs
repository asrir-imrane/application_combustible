using ApplicationCharbon.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ApplicationCharbon.UI
{
    public partial class Fourni : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AddButton_Fournisseur_Click(object sender, EventArgs e)
        {
            // Récupérer les valeurs des champs du formulaire
            string FrNom = nom_fournisseur.Text;

            // Créer un nouvel objet Fournisseur avec les valeurs de champ de formulaire
            Fournisseur newFournisseur = new Fournisseur
            {
                nom_fournisseur = FrNom,
            };

            // Ajouter le nouveau CS à la base de données
            using (var db = new CharbonContext())
            {
                db.Fournisseur.Add(newFournisseur);
                db.SaveChanges();
            }

            // Rediriger l'utilisateur vers la même page
            Response.Redirect(Request.RawUrl);
        }
        protected void Annuler(object sender, EventArgs e)
        {
            Response.Redirect(Request.RawUrl);
        }
    }
}