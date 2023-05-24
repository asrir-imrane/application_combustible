using ApplicationCharbon.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ApplicationCharbon.UI
{
    public partial class Origin : System.Web.UI.Page
    {
        

        protected void AddButton_Origine_Click(object sender, EventArgs e)
        {
            // Récupérer les valeurs des champs du formulaire
            string OrigineNom = nomorigine.Text;

            // Créer un nouvel objet Fournisseur avec les valeurs de champ de formulaire
            Origine newOrigine = new Origine
            {
                nom_origine = OrigineNom,
            };

            // Ajouter le nouveau CS à la base de données
            using (var db = new CharbonContext())
            {
                db.Origine.Add(newOrigine);
                db.SaveChanges();

            }

            Response.Redirect("Origin.aspx");
        }
    }
}