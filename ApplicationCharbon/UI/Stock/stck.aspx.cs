using ApplicationCharbon.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity.Validation;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ApplicationCharbon.UI
{
    public partial class stck : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {


                FillBateauDropdown();
                FillStationDropdown();
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
        private void FillStationDropdown()
        {
            using (var contexte = new CharbonContext())
            {
                var Stations = contexte.Station.ToList();

                // Bind the dropdown control to the list of Origine objects
                nomstationliste.DataSource = Stations;
                nomstationliste.DataTextField = "nom_station";
                nomstationliste.DataValueField = "id_station";
                nomstationliste.DataBind();
            }
        }

        protected void AddButton_Stock_Click(object sender, EventArgs e)
        {
            // Récupérer les valeurs des champs du formulaire

            int idBateauAdd = Convert.ToInt32(nombateauliste.SelectedValue);
            int idStation = Convert.ToInt32(nomstationliste.SelectedValue);


            DateTime dateStock = DateTime.Parse(date.Text);

            string consommationSock = consommation.Text;
            decimal CS = decimal.Parse(consommationSock);
            float Consommation = (float)CS;

            string livraisonStock = livraison.Text;
            float LS = float.Parse(livraisonStock);

            string dechargeStock = decharge.Text;
            float DG = float.Parse(dechargeStock);

            string autonomieStock = autonomie.Text;
            float Autonomie = float.Parse(autonomieStock);

            // Créer un nouvel objet AO avec les valeurs de champ de formulaire
            Stock newStock = new Stock
            {
                id_bateau = idBateauAdd,
                date = dateStock,
                consommation = CS,
                livraison = LS,
                decharge = DG,
                autonomie = Autonomie
            };

            // Ajouter le nouvelle AO à la base de données
            // Ajouter le nouvelle AO à la base de données
            try
            {
                // Ajouter le nouvelle AO à la base de données
                using (var db = new CharbonContext())
                {
                    db.Stock.Add(newStock);
                    db.SaveChanges();

                    var stockFinal = db.Centrale_Stock.OrderByDescending(cs => cs.stock_date).Select(cs => cs.stock_final).FirstOrDefault();
                    float sfinal = (float)stockFinal;

                    //float stock_disponible = (LS + stock_initial) - Consommation;
                    // Créer une nouvelle instance de Centrale_Stock
                    Centrale_Stock newCentraleStock = new Centrale_Stock
                    {
                        id_station = idStation,
                        stock_initial = sfinal,
                        stock_final = (DG + sfinal) - Consommation,
                        stock_difference = ((DG + sfinal) - Consommation) - sfinal,
                        stock_ajustement = 0,
                        stock_date = dateStock
                    };
                    db.Centrale_Stock.Add(newCentraleStock);
                    db.SaveChanges();
                }
            }
            catch (DbEntityValidationException ex)
            {
                foreach (var validationErrors in ex.EntityValidationErrors)
                {
                    foreach (var validationError in validationErrors.ValidationErrors)
                    {
                        System.Diagnostics.Debug.WriteLine("Property: {0} Error: {1}", validationError.PropertyName, validationError.ErrorMessage);
                    }
                }
            }


            /* Page.ClientScript.RegisterStartupScript(this.GetType(), "showMessage", "<script>$('#message').show();</script>");
             Response.Redirect("index.aspx#CS");*/

            Response.Redirect("stck.aspx");

        }
    }
}