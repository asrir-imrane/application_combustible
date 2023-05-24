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
using System.Data.Entity;

namespace ApplicationCharbon.UI
{
    public partial class updatePlanningPrevisionnel : System.Web.UI.Page
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
        protected void EditButton_PV_Click(object sender, EventArgs e)
        {

            string IdPlanED = id_planning.Value;
            int IdPln = int.Parse(IdPlanED);
            // Récupérer les valeurs des champs du formulaire
            int IdSt = Convert.ToInt32(nomstationListe.SelectedValue);

            string ann = Request.Form["year"];


            // Créer un nouvel objet CS avec les valeurs de champ de formulaire
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

            // Ajouter le nouveau CS à la base de données
            using (var db = new CharbonContext())
            {
                db.Planing_Previsionnel.Add(newPV);
                db.SaveChanges();

            }
            using (var db = new CharbonContext())
            {
                Planing_Previsionnel existingPV = db.Planing_Previsionnel.Find(IdPln);

                // Mettre à jour les propriétés du CS avec les nouvelles valeurs
                existingPV.id_station = IdSt;
                existingPV.annee = ann;
                existingPV.fichier_excel = strFileName;

                // Enregistrer les modifications dans la base de données
                db.Entry(existingPV).State = EntityState.Modified;
                db.SaveChanges();
            }

            Response.Redirect("PlanningPrevisionnel.aspx");

        }

    }
}