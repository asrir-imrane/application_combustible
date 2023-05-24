using ApplicationCharbon.Models;
using ApplicationCharbon.Services;
using System;
using System.Collections.Generic;
using System.Data.Entity.Validation;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ApplicationCharbon.UI.Bateaux
{
    public partial class Bateaux : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                FillcontratDropdown();
                FillOrigineDropdown();
            }
        }



        private void FillOrigineDropdown()
        {
            using (var contexte = new CharbonContext())
            {
                var origines = contexte.Origine.ToList();

                // Bind the dropdown control to the list of Origine objects
                nomorigineListe.DataSource = origines;
                nomorigineListe.DataTextField = "nom_origine";
                nomorigineListe.DataValueField = "id_origine";
                nomorigineListe.DataBind();
            }
        }


        private void FillcontratDropdown()
        {
            using (var contexte = new CharbonContext())
            {
                var contratid = contexte.Contrat.ToList();
                nomcontratListe.DataSource = contratid;
                nomcontratListe.DataTextField = "nom_contrat";
                nomcontratListe.DataValueField = "id_contrat";
                nomcontratListe.DataBind();
            }
        }


        protected void AddButton_Bateau_Click(object sender, EventArgs e)
        {
            // Récupérer les valeurs des champs du formulaire
            
            int Idct = Convert.ToInt32(nomcontratListe.SelectedValue);
            string nomBateau = nom_bateau.Value;

            string Tonnage = tonnage.Value;
            float Tng = float.Parse(Tonnage);



            int IdOg = Convert.ToInt32(nomorigineListe.SelectedValue);
          
            string vlrCalorifique = valeur_calorifique.Value;
            decimal VCALORIFIQUE = decimal.Parse(vlrCalorifique);


            string CT = cout.Value;
            decimal Cout = decimal.Parse(CT);

            string fraisDouane = frais_douane.Value;
            decimal Fd = decimal.Parse(fraisDouane);

            string decharg = decharge.Value;
            float dg = float.Parse(decharg);

            string prixRendu = prix_rendu.Value;
            decimal Pr = decimal.Parse(prixRendu);

            string Assrc = assurance.Value;
            float Ac = float.Parse(Assrc);

            string eBT = etatBateau.Value;

            // Créer un nouvel objet AO avec les valeurs de champ de formulaire
            Bateau newBT = new Bateau
            {
                id_contrat = Idct,
                id_origine = IdOg,
                nom_bateau = nomBateau,
                tonnage = Tng,
                valeur_calorifique = VCALORIFIQUE,
                cout = Cout,
                frais_douane = Fd,
                decharge = dg,
                prix_rendu = Pr,
                assurance = Ac,
                etat = eBT
            };


            // Ajouter le nouvelle AO à la base de données
            using (var db = new CharbonContext())
            {
                db.Bateau.Add(newBT);
                db.SaveChanges();
            }

            // Rediriger l'utilisateur vers la même page
            Response.Redirect(Request.RawUrl);
        }





    }
}

