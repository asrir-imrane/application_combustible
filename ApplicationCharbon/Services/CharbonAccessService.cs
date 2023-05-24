using ApplicationCharbon.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
using System.Net;
using System.Data.Entity.Core.Metadata.Edm;
using ApplicationCharbon.UI;
using System.Data.SqlClient;

namespace ApplicationCharbon.Services
{
    public class CharbonAccessService
    {
        private readonly CharbonContext _context;

        public CharbonAccessService()
        {
            _context = new CharbonContext();
        }

        //Station
        public List<Station> GetMyDataStation()
        {
            var va = _context.Station.SqlQuery("SELECT * from Station").ToList();
            return va;
        }

        //Station-data
        public List<Station> GetMyAllDataStation()
        {
            var va = _context.Station.SqlQuery("SELECT * from Station_Central_Type").ToList();
            return va;
        }

        //IdStation
        public List<int> GetIdStation()
        {
            var va = _context.Station.SqlQuery("SELECT id_station from Station").Select(s => s.id_station).ToList();
            return va;
        }

        public List<Types> GetMyData()
        {
            var va = _context.Types.SqlQuery("SELECT * from Types").ToList();
            return va;
        }


        //Centrale_Stock

        public List<Centrale_Stock> GetMyDataCS()
        {

            var va = _context.Centrale_Stock.SqlQuery("SELECT * from Centrale_Stock").ToList();
            return va;
        }

        //Planning_Previsionnel
        public List<MaVue> GetMyDataPV()
        {


            var va = _context.MaVue.SqlQuery("SELECT * from MaVue").ToList();
            return va;
        }

        //AppelOffre
        public List<Appel_Offre> GetMyDataAppelOffre()
        {
            var va = _context.Appel_Offre.SqlQuery("SELECT * from Appel_Offre ").ToList();
            return va;
        }

        public int GetNumberOfValidatedAppelOffre()
        {
            var validatedAppelOffres = _context.Appel_Offre.SqlQuery("SELECT * FROM Appel_Offre WHERE statut = 'validee'").ToList();
            return validatedAppelOffres.Count;
        }

        public int GetNumberOfRejectedAppelOffre()
        {
            var RejectedAppelOffres = _context.Appel_Offre.SqlQuery("SELECT * FROM Appel_Offre WHERE statut = 'rejetee'").ToList();
            return RejectedAppelOffres.Count;
        }

        public int GetNumberOfAttentAppelOffre()
        {
            var AttentAppelOffres = _context.Appel_Offre.SqlQuery("SELECT * FROM Appel_Offre WHERE statut = 'en_attente'").ToList();
            return AttentAppelOffres.Count;
        }
        //Fournisseur
        public List<Fournisseur> GetMyDataFournisseur()
        {
            var va = _context.Fournisseur.SqlQuery("SELECT * from Fournisseur").ToList();
            return va;
        }

        //Contrat
        public List<VContrat> GetMyDataContrat()
        {
            var va = _context.VContrat.SqlQuery("SELECT * from VContrat").ToList();
            return va;
        }

        //Nom Fournisseur
        public List<string> GetNomFournisseur()
        {
            var va = _context.Fournisseur.SqlQuery("SELECT nom_fournisseur from Fournisseur").Select(s => s.nom_fournisseur).ToList();
            return va;
        }

        //Origine Bateau
        public List<Origine> GetMyDataOrigine()
        {
            var va = _context.Origine.SqlQuery("SELECT * from Origine").ToList();
            return va;
        }
        //Origine Bateau
        public List<Types> GetMyDataType()
        {
            var va = _context.Types.SqlQuery("SELECT * from Types").ToList();
            return va;
        }
        //Bateau
        public List<VBateau> GetMyDataBateau()
        {


            var va = _context.VBateau.SqlQuery("SELECT * from VBateau ").ToList();
            return va;
        }


        //StockBateau
        public List<Stock> GetMyDataStock()
        {


            var va = _context.Stock.SqlQuery("SELECT * from Stock ").ToList();
            return va;
        }








        //Graphe NbContrat 



        public class MonthContractData
        {
            public int Key { get; set; }
            public int Value { get; set; } 
        }


        public List<MonthContractData> GetNumberContratByMonth(int idStation)
        {
            var result = new List<MonthContractData>();
            var query = "SELECT MONTH(date_debut), COUNT(*) FROM VueContrat WHERE id_station = @idStation AND YEAR(date_debut) = YEAR(GETDATE()) GROUP BY MONTH(date_debut)";
            var parameters = new SqlParameter("@idStation", idStation);
            var data = _context.Database.SqlQuery<MonthContractData>(query, parameters).ToList();
            result.AddRange(data);
            return result;
        }




        //2ème Graphe
        //Origine Plus utilisé
        public List<vue_origine_plus_utilisé> GetOrigine()
        {
            var va = _context.vue_origine_plus_utilisé.SqlQuery("SELECT * from vue_origine_plus_utilisé").ToList();
            return va;
        }

        ///////////////////////////////////////////
        //NumberStation
        public int GetNumberStation()
        {
            var va = _context.Station.SqlQuery("SELECT * from Station").ToList();
            return va.Count;
        }


        //NumberAppelOffre
        public int GetNumberAO()
        {
            var va = _context.Appel_Offre.SqlQuery("SELECT * from Appel_Offre").ToList();
            return va.Count;
        }

        //NumberContrat
        public int GetNumberContrat()
        {
            var va = _context.Contrat.SqlQuery("SELECT * from Contrat").ToList();
            return va.Count;
        }

    }


}






