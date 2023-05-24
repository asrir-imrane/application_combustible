using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using static System.Net.Mime.MediaTypeNames;
using System.Web.Security;
using ApplicationCharbon.Services;
using System.Data.Entity.Infrastructure;

namespace ApplicationCharbon.Models
{
    public class CharbonContext : DbContext
    {
        public CharbonContext() : base("name=Charbon_DB2Entities1")
        {
        }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }

        public virtual DbSet<Appel_Offre> Appel_Offre { get; set; }

        public virtual DbSet<Bateau> Bateau { get; set; }
        public virtual DbSet<Centrale_Stock> Centrale_Stock { get; set; }
        public virtual DbSet<Contrat> Contrat { get; set; }
        public virtual DbSet<Contrat_Details> Contrat_Details { get; set; }
        public virtual DbSet<Fournisseur> Fournisseur { get; set; }
        public virtual DbSet<Origine> Origine { get; set; }
        public virtual DbSet<Planing_Previsionnel> Planing_Previsionnel { get; set; }
        public virtual DbSet<Station> Station { get; set; }
        public virtual DbSet<station_type> station_type { get; set; }
        public virtual DbSet<Stock> Stock { get; set; }
       
        public virtual DbSet<Types> Types { get; set; }
        public virtual DbSet<MaVue> MaVue { get; set; }
        public virtual DbSet<VBateau> VBateau { get; set; }
        public virtual DbSet<VContrat> VContrat { get; set; }
        public virtual DbSet<VueContrat> VueContrat { get; set; }
        public virtual DbSet<vue_origine_plus_utilisé> vue_origine_plus_utilisé { get; set; }
    }
}
