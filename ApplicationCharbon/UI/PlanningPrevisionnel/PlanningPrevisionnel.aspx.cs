using ApplicationCharbon.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using OfficeOpenXml;
using System.IO;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;


namespace ApplicationCharbon.UI
{
    public partial class PlanningPrevisionnel : System.Web.UI.Page
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
        protected void AddButton_PV_Click(object sender, EventArgs e)
        {


            //Récupérer les valeurs des champs du formulaire
            int IdSt = Convert.ToInt32(nomstationListe.SelectedValue);

            string ann = Request.Form["annee"];


            //Créer un nouvel objet CS avec les valeurs de champ de formulaire




            string strFileName;
            string strFilePath;
            string strFolder;
            strFolder = Server.MapPath("../../Assets/excelFile/");
            // Retrieve the name of the file that is posted.
            strFileName = oFile.PostedFile.FileName;
            strFileName = Path.GetFileName(strFileName);
            if (oFile.Value != "")
            {
                // Create the folder if it does not exist.
                if (!Directory.Exists(strFolder))
                {
                    Directory.CreateDirectory(strFolder);
                }
                // Save the uploaded file to the server.
                strFilePath = strFolder + strFileName;


                oFile.PostedFile.SaveAs(strFilePath);

            }




            Planing_Previsionnel newPV = new Planing_Previsionnel
            {
                id_station = IdSt,
                annee = ann,
                fichier_excel = strFileName
            };

            //Ajouter le nouveau CS à la base de données
            using (var db = new CharbonContext())
            {
                db.Planing_Previsionnel.Add(newPV);
                db.SaveChanges();

            }


            Response.Redirect("PlanningPrevisionnel.aspx");

        }

    }
}