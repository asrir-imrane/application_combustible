using ApplicationCharbon.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ApplicationCharbon.UI.Bateaux
{
    public partial class deleteBateaux : System.Web.UI.Page
    {
        protected void DeleteButton_Bateau_Click(object sender, EventArgs e)
        {
            
            int IdBT = Int32.Parse(Request.Form["Id_bateauSupp"]);
            
            delete Delete = new delete();
            Delete.SupprimerBateau(IdBT);

            // Rediriger vers la page d'index après la suppression
            Response.Redirect("Bateaux.aspx");
        }

    }
}