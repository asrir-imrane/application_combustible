using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ApplicationCharbon.UI.Login
{
    public partial class LoginForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            string username = UserLogin.Value;
            string password = UserPassword.Value;
            var utilisateurService = new LoginService();
            bool isValidUser = utilisateurService.IsValidUser(username, password);
            Label errorMessage = (Label)FindControl("errormessage");
            if (isValidUser)
            {
                using (var context = new UtilisateurContext())
                {
                    var userPermissions = context.User_Permissions
                        .Where(up => up.nom_utilisateur == username)
                        .Select(up => up.nom_role)
                        .Distinct()
                        .ToList();

                    Session["UserLogin"] = username;
                    Session["userPermissions"] = string.Join(", ", userPermissions);
                }

                // successful login
                Response.Redirect("../index.aspx");
            }
            else
            {
                // unsuccessful login

                errorMessage.Visible = true;
            }
        }

    }
}