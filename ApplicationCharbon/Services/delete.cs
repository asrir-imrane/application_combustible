using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ApplicationCharbon.Models;

namespace ApplicationCharbon.Services
{
    public class delete
    {
        public void SupprimerType(int id)
         {
             using (var db = new CharbonContext())
             {
                 var typeASupprimer = db.Types.SingleOrDefault(u => u.id_type == id);

                 if (typeASupprimer != null)
                 {
                     db.Types.Remove(typeASupprimer);
                     db.SaveChanges();
                 }


             }
         }


         public void SupprimerCS(int id)
         {
             using (var db = new CharbonContext())
             {
                 var CsASupprimer = db.Centrale_Stock.SingleOrDefault(u => u.Id_SCentrale == id);

                 if (CsASupprimer != null)
                 {
                     db.Centrale_Stock.Remove(CsASupprimer);
                     db.SaveChanges();
                 }
             }
         }


        public void SupprimerPV(int id)
        {
            using (var db = new CharbonContext())
            {
                var PvASupprimer = db.Planing_Previsionnel.SingleOrDefault(u => u.id_planning == id);

                if (PvASupprimer != null)
                {
                    db.Planing_Previsionnel.Remove(PvASupprimer);
                    db.SaveChanges();
                }
            }
        }

        //Supprimer Station
        public void SupprimerStation(int id)
        {
            using (var db = new CharbonContext())
            {
                var StASupprimer = db.Station.SingleOrDefault(u => u.id_station == id);

                if (StASupprimer != null)
                {
                    db.Station.Remove(StASupprimer);
                    db.SaveChanges();
                }
            }
        }

        //Supprimer AppelOffre
        public void SupprimerAppelOffre(int id)
        {
            using (var db = new CharbonContext())
            {
                var AoASupprimer = db.Appel_Offre.SingleOrDefault(u => u.id_appOffre == id);

                if (AoASupprimer != null)
                {
                    db.Appel_Offre.Remove(AoASupprimer);
                    db.SaveChanges();
                }
            }
        }

        //Supprimer Fournisseur
        public void SupprimerFournisseur(int id)
        {
            using (var db = new CharbonContext())
            {
                var FrASupprimer = db.Fournisseur.SingleOrDefault(u => u.id_fournisseur == id);

                if (FrASupprimer != null)
                {
                    db.Fournisseur.Remove(FrASupprimer);
                    db.SaveChanges();
                }
            }
        }
        //Supprimer Contrat
        public void SupprimerContrat(int id1, int id2)
        {
            using (var db = new CharbonContext())
            {
                var ContratASupprimer = db.Contrat.SingleOrDefault(u => u.id_contrat == id1);
                var ContratDASupprimer = db.Contrat_Details.SingleOrDefault(u => u.id_contDetails == id2);

                if ((ContratASupprimer != null) && (ContratDASupprimer != null))
                {
                    db.Contrat.Remove(ContratASupprimer);
                    db.Contrat_Details.Remove(ContratDASupprimer);
                    db.SaveChanges();
                }
            }
        }

        //Supprimer Origine
        public void SupprimerOrigine(int id)
        {
            using (var db = new CharbonContext())
            {
                var OgASupprimer = db.Origine.SingleOrDefault(u => u.id_origine == id);

                if (OgASupprimer != null)
                {
                    db.Origine.Remove(OgASupprimer);
                    db.SaveChanges();
                }
            }
        }

        //Supprimer Bateau
        public void SupprimerBateau(int id)
        {
            using (var db = new CharbonContext())
            {
                var BateauASupprimer = db.Bateau.SingleOrDefault(u => u.id_bateau == id);

                if (BateauASupprimer != null)
                {
                    db.Bateau.Remove(BateauASupprimer);
                    db.SaveChanges();
                }
            }
        }

        //Supprimer Stock
        public void SupprimerStock(int id)
        {
            using (var db = new CharbonContext())
            {
                var StockASupprimer = db.Stock.SingleOrDefault(u => u.id_stock == id);

                if (StockASupprimer != null)
                {
                    db.Stock.Remove(StockASupprimer);
                    db.SaveChanges();
                }
            }
        }




    }
}