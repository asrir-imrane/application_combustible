using ApplicationCharbon.Models;
using ApplicationCharbon.UI.Station;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ApplicationCharbon.UI
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            FillStationDropdown();

        }
        private void FillStationDropdown()
        {
            using (var contexte = new CharbonContext())
            {
                var station = contexte.Station.ToList();

                nomstationListe.DataSource = station;
                nomstationListe.DataTextField = "nom_station";
                nomstationListe.DataValueField = "id_station";
                nomstationListe.DataBind();
            }
        }
        protected void Choose_Station(object sender, EventArgs e)
        {
            int IdSt = Convert.ToInt32(nomstationListe.SelectedValue);
            selectedStation.Value = IdSt.ToString();
        }


    }
}