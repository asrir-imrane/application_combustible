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
    public partial class updateStock : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                FillBateauDropdown();
            }
        }



        private void FillBateauDropdown()
        {
            using (var contexte = new CharbonContext())
            {
                var Bateaus = contexte.Bateau.ToList();

                // Bind the dropdown control to the list of Origine objects
                nombateauliste.DataSource = Bateaus;
                nombateauliste.DataTextField = "nom_bateau";
                nombateauliste.DataValueField = "id_bateau";
                nombateauliste.DataBind();
            }
        }

        protected void EditButton_Stock_Click(object sender, EventArgs e)
        {
            // Récupérer les valeurs des champs du formulaire
            int idStock = Int32.Parse(Request.Form["id_stock"]);
            int idBateau = Convert.ToInt32(nombateauliste.SelectedValue);
            string consommationSock = consomation.Text;
            decimal CS = decimal.Parse(consommationSock);

            string livraisonStock = livraisons.Text;
            float LS = float.Parse(livraisonStock);

            string dechargeStock = decharges.Text;
            float DG = float.Parse(dechargeStock);

            string autonomieStock = autonomies.Text;
            float Autonomie = float.Parse(autonomieStock);
            // Récupérer le CS existant de la base de données
            using (var db = new CharbonContext())
            {
                Stock existingStock = db.Stock.Find(idStock);

                // Mettre à jour les propriétés du CS avec les nouvelles valeurs
                
                existingStock.id_bateau = idBateau;
                existingStock.consommation = CS;
                existingStock.livraison = LS;
                existingStock.decharge = DG;
                existingStock.autonomie = Autonomie;

                // Enregistrer les modifications dans la base de données
                db.Entry(existingStock).State = EntityState.Modified;
                db.SaveChanges();
            }

            Response.Redirect("stck.aspx");
        }
    }
}