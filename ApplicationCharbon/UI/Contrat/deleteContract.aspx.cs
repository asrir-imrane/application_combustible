using ApplicationCharbon.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ApplicationCharbon.UI
{
    public partial class deleteContract : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void DeleteButton_Contrat_Click(object sender, EventArgs e)
        {
            int IdContrat = Int32.Parse(Request.Form["id_contratsupp"]);
            int IdContratD = Int32.Parse(Request.Form["id_contratDsupp"]);

           

            delete Delete = new delete();
            Delete.SupprimerContrat(IdContrat, IdContratD);

            
            Response.Redirect("Contract.aspx");
        }
    }
}