using ApplicationCharbon.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ApplicationCharbon.UI
{
    public partial class deleteCentraleStock : System.Web.UI.Page
    {
        protected void DeleteButton_CS_Click(object sender, EventArgs e)
        {
            int IdSCentrale = Int32.Parse(Request.Form["id_CS"]);
            

            delete Delete = new delete();
            Delete.SupprimerCS(IdSCentrale);

            // Rediriger vers la page d'index après la suppression
            // Response.Redirect("index.aspx#CS");
            //Response.Redirect("CentraleStock.aspx");
        }
    }
}