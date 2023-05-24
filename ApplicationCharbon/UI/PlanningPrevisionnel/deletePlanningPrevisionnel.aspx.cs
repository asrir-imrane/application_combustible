using ApplicationCharbon.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ApplicationCharbon.UI
{
    public partial class deletePlanningPrevisionnel : System.Web.UI.Page
    {
        protected void DeleteButton_PV_Click(object sender, EventArgs e)
        {
            int Id_Plan = Int32.Parse(Request.Form["id_PV"]);
            

            delete Delete = new delete();
            Delete.SupprimerPV(Id_Plan);

            // Rediriger vers la page d'index après la suppression
            // Response.Redirect("index.aspx#CS");
            
            Response.Redirect("PlanningPrevisionnel.aspx");
        }
    }
}