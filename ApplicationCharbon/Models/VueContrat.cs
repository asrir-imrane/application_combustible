//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ApplicationCharbon.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class VueContrat
    {
        public int id_station { get; set; }
        public string nom_station { get; set; }
        public int id_contrat { get; set; }
        public string nom_contrat { get; set; }
        public int id_contDetails { get; set; }
        public System.DateTime date_debut { get; set; }
    }
}
