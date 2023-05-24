using ApplicationCharbon.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity.Validation;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using ClosedXML.Excel;



namespace ApplicationCharbon.UI
{
    public partial class AppelOffre : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                FillTypeDropdown();
                FillidPlanningDropdown();
            }
        }



        private void FillTypeDropdown()
        {
            using (var contexte = new CharbonContext())
            {
                var NomType = contexte.Types.ToList();

                // Bind the dropdown control to the list of Origine objects
                nomTypeListe.DataSource = NomType;
                nomTypeListe.DataTextField = "type";
                nomTypeListe.DataValueField = "type";
                nomTypeListe.DataBind();
            }
        }
        private void FillidPlanningDropdown()
        {
            using (var contexte = new CharbonContext())
            {
                var idPlanning = contexte.Planing_Previsionnel.ToList();

                // Bind the dropdown control to the list of Origine objects
                idPlanningListe.DataSource = idPlanning;
                idPlanningListe.DataTextField = "id_planning";
                idPlanningListe.DataValueField = "id_planning";
                idPlanningListe.DataBind();
            }
        }


        protected void ExportToExcelButton_Click(object sender, EventArgs e)
        {
            // Perform the necessary logic to retrieve the table data and generate the HTML table code

            // Set the response headers to indicate that an Excel file will be downloaded
            Response.Clear();
            Response.ContentType = "application/vnd.ms-excel";
            Response.AddHeader("Content-Disposition", "attachment;filename=table_data.xlsx");

            // Write the Excel file content to the response
            using (var workbook = new XLWorkbook())
            {
                var worksheet = workbook.Worksheets.Add("Table Data");
                // Add the table data to the worksheet

                using (var stream = new MemoryStream())
                {
                    workbook.SaveAs(stream);
                    stream.WriteTo(Response.OutputStream);
                }
            }

            Response.End();
        }


        protected void AddButton_AO_Click(object sender, EventArgs e)
        {
            // Récupérer les valeurs des champs du formulaire



            string Tp = nomTypeListe.SelectedValue;
            int idplanning = Convert.ToInt32(idPlanningListe.SelectedValue);
            string Tonnage = tonnage.Value;
            float Tng = float.Parse(Tonnage);

            string nbrBateaux = nbr_bateaux.Value;
            int Nbateau = int.Parse(nbrBateaux);

            DateTime dateEmission = DateTime.Parse(date_Emission.Value);
            DateTime dateLivraison = DateTime.Parse(date_livraison.Value);
            DateTime dateCreation = DateTime.Parse(date_creation.Value);

            string Observation = observation.Value;
            string Statut = Request.Form["status"];



            // Créer un nouvel objet AO avec les valeurs de champ de formulaire
            Appel_Offre newAO = new Appel_Offre
            {
                id_planning = idplanning,
                tonnage = Tng,
                date_Emission = dateEmission,
                date_livraison = dateLivraison,
                date_creation = dateCreation,
                nbr_bateaux = Nbateau,
                observation = Observation,
                type = Tp,
                statut = Statut
            };


            // Ajouter le nouvelle AO à la base de données
            using (var db = new CharbonContext())
            {
                db.Appel_Offre.Add(newAO);
                db.SaveChanges();
            }







            /* Page.ClientScript.RegisterStartupScript(this.GetType(), "showMessage", "<script>$('#message').show();</script>");
             Response.Redirect("index.aspx#CS");*/

            Response.Redirect("AppelOffre.aspx");

        }
    }
}