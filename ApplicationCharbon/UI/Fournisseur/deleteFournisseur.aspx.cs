using ApplicationCharbon.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ApplicationCharbon.UI
{
    public partial class deleteFournisseur : System.Web.UI.Page
    {
        protected void DeleteButton_Fournisseur_Click(object sender, EventArgs e)
        {
            int IdFournisseur = Int32.Parse(Request.Form["id_fournisseur"]);


            delete Delete = new delete();
            Delete.SupprimerFournisseur(IdFournisseur);

            // Rediriger vers la page d'index après la suppression
            Response.Redirect("Fourni.aspx");
            
        }
    }
}