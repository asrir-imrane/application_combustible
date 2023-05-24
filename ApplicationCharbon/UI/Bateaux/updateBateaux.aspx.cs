using ApplicationCharbon.Models;
using ApplicationCharbon.Services;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ApplicationCharbon.UI.Bateaux
{
    public partial class updateBateaux : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var service2 = new CharbonAccessService();
                var va2 = service2.GetMyDataOrigine();
                origineEdit.DataSource = va2;
                origineEdit.DataTextField = "nom_origine"; // la propriété qui contient le nom de fournisseur
                origineEdit.DataValueField = "id_origine"; // la propriété qui contient l'identifiant de fournisseur
                origineEdit.DataBind();
            }
        }
        protected void EditButton_Bateau_Click(object sender, EventArgs e)
        {
            // Récupérer les valeurs des champs du formulaire
            string idBateauED = id_bateauED.Value;
            int IdBT = int.Parse(idBateauED);

            string nomBateauED = nom_bateauED.Value;

            string tNGED = tonnageED.Value;
            float TngED = float.Parse(tNGED);

            string selectedValueOg = origineEdit.SelectedValue;
            int IdOg = int.Parse(selectedValueOg);

            string valeurCalorifiqueED = valeur_calorifiqueED.Value;
            decimal VCALORIFIQUE = decimal.Parse(valeurCalorifiqueED);

            string ctED = coutED.Value;
            decimal CT = decimal.Parse(ctED);

            string fraisDouaneED = frais_douaneED.Value;
            decimal FD = decimal.Parse(fraisDouaneED);

            string dgeED = dechargeED.Value;
            float dg = float.Parse(dgeED);



            string prixRenduED = prix_renduED.Value;
            decimal Pr = decimal.Parse(prixRenduED);

            string assrED = assuranceED.Value;
            float assrc = float.Parse(assrED);

            string etED = etatED.Value;



            // Récupérer le CS existant de la base de données
            using (var db = new CharbonContext())
            {
                Bateau existingAO = db.Bateau.Find(IdBT);

                // Mettre à jour les propriétés du CS avec les nouvelles valeurs
                existingAO.id_origine = IdOg;
                existingAO.nom_bateau = nomBateauED;
                existingAO.tonnage = TngED;
                existingAO.valeur_calorifique = VCALORIFIQUE;
                existingAO.cout = CT;
                existingAO.frais_douane = FD;
                existingAO.decharge = dg;
                existingAO.prix_rendu = Pr;
                existingAO.assurance = assrc;
                existingAO.etat = etED;

                // Enregistrer les modifications dans la base de données
                db.Entry(existingAO).State = EntityState.Modified;
                db.SaveChanges();
            }

            // Rediriger vers la page d'index après une mise à jour réussie du CS
            // Response.Redirect("index.aspx#CS");
            string IdContrat = Request.QueryString["id"];
            Response.Redirect("Bateaux.aspx?id=" + IdContrat);
        }
    }
}