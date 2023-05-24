using ApplicationCharbon.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ApplicationCharbon.UI.Login
{
    public class LoginService
    {
        public LoginService() { }

        public bool IsValidUser(string username, string password)
        {
            var context = new UtilisateurContext();
            Utilisateurs utilisateur = context.Utilisateurs.FirstOrDefault(u => u.nom_utilisateur == username && u.mot_de_passe == password);
            return utilisateur != null;
           

        }

        

    }

}