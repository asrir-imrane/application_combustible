using ApplicationCharbon.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ApplicationCharbon.UI
{
    public partial class deleteStock : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void DeleteButton_Stock_Click(object sender, EventArgs e)
        {
            int idStock = Int32.Parse(Request.Form["id_stock"]);

            delete Delete = new delete();
            Delete.SupprimerStock(idStock);

            // Rediriger vers la page d'index après la suppressionSystem.FormatException : 'Le format de la chaîne d'entrée est incorrect.'
            // Response.Redirect("index.aspx#CS");
            string IdBateau = Request.QueryString["id"];
            Response.Redirect("stck.aspx?id=" + IdBateau);
        }
    }
}