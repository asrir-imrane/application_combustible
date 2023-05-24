using ApplicationCharbon.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ApplicationCharbon.UI.Station
{
    public partial class deleteStation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void DeleteButton_Station_Click(object sender, EventArgs e)
        {
            int IdStation = Int32.Parse(Request.Form["id_station"]);
            

            delete Delete = new delete();
            Delete.SupprimerStation(IdStation);

            // Rediriger vers la page d'index après la suppression
            Response.Redirect("stations.aspx");
            // Response.Redirect("index.aspx#station");
        }
    }
}