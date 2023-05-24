using ApplicationCharbon.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ApplicationCharbon.UI
{
    public partial class deleteAppelOffre : System.Web.UI.Page
    {
        protected void DeleteButton_AO_Click(object sender, EventArgs e)
        {
            int Id_AOffre = Int32.Parse(Request.Form["Id_AOSupp"]);
           
            delete Delete = new delete();
            Delete.SupprimerAppelOffre(Id_AOffre);

            
         
            Response.Redirect("AppelOffre.aspx");
        }
    }
}