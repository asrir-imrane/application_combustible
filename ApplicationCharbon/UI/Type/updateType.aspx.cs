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
    public partial class updateType : System.Web.UI.Page
    {
        protected void EditButton_Type_Click(object sender, EventArgs e)
        {

            // Récupérer les valeurs des champs du formulaire
            int IdType = Int32.Parse(Request.Form["id_type"]);
           
            string TYPE = typeEdit.Value; 
            // Récupérer le type existant de la base de données
            using (var db = new CharbonContext())
                {
                    Types existingType = db.Types.Find(IdType);

                   // Mettre à jour les propriétés du type avec les nouvelles valeurs
                    existingType.type = TYPE;

                    // Enregistrer les modifications dans la base de données
                    db.Entry(existingType).State = EntityState.Modified;
                    db.SaveChanges();
                }

            // Rediriger vers la page d'index après une mise à jour réussie du type
            Response.Redirect("Type.aspx");



        }
    }
}