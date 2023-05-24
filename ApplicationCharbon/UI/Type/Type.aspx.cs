using ApplicationCharbon.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using ApplicationCharbon.Services;
using System.Data.Entity;

namespace ApplicationCharbon.UI
{
    public partial class Type : System.Web.UI.Page
    {
        protected void AddButton_Type_Click(object sender, EventArgs e)
        {
            // Récupérer les valeurs des champs du formulaire
            string TYPE = nomtype.Text;

            // Créer un nouvel objet type avec les valeurs de champ de formulaire
            Types newType = new Types
            {
                type = TYPE
            };

            // Ajouter le nouveau type à la base de données
            using (var db = new CharbonContext())
            {
                db.Types.Add(newType);
                db.SaveChanges();

            }

            Response.Redirect("Type.aspx");
        }

      

      





    }
}