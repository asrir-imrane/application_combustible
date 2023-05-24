using ApplicationCharbon.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ApplicationCharbon.UI
{
    public partial class updateCentraleStock : System.Web.UI.Page
    {
        protected void EditButton_CS_Click(object sender, EventArgs e)
        {
            // Récupérer les valeurs des champs du formulaire
            int IdSCentrale = Int32.Parse(Request.Form["Id_SCentrale"]);
            float StInitial = float.Parse(Request.Form["stock_initial"]);
            float StFinal = float.Parse(Request.Form["stock_final"]);
            float StAjustement = float.Parse(Request.Form["stock_ajustement"]);
           
        

          

           

            //StockDiffernece
            float SD = StFinal - StInitial;

            DateTime dateStock = DateTime.Parse(date.Text);

            // Récupérer le CS existant de la base de données
            using (var db = new CharbonContext())
            {
                Centrale_Stock existingCS = db.Centrale_Stock.Find(IdSCentrale);

                // Mettre à jour les propriétés du CS avec les nouvelles valeurs
                existingCS.stock_initial = StInitial;
                existingCS.stock_final = StFinal;
                existingCS.stock_difference = SD;
                existingCS.stock_ajustement = StAjustement;
                existingCS.stock_date = dateStock;

                // Enregistrer les modifications dans la base de données
                db.Entry(existingCS).State = EntityState.Modified;
                db.SaveChanges();
            }

            Response.Redirect("CentraleStock.aspx");
        }
    }
}