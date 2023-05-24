using ApplicationCharbon.Models;
using ApplicationCharbon.Services;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ApplicationCharbon.UI
{
    public partial class deleteType : System.Web.UI.Page
    {
        protected void DeleteButton_Type_Click(object sender, EventArgs e)
        {
            int IdType = Int32.Parse(Request.Form["id_typesupp"]);
            delete Delete = new delete();
            
            Delete.SupprimerType(IdType);

            // Rediriger vers la page d'index après la suppression du type
            Response.Redirect("Type.aspx");

        }
    }
}