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
    
    public partial class Station
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Station()
        {
            this.Centrale_Stock = new HashSet<Centrale_Stock>();
            this.Planing_Previsionnel = new HashSet<Planing_Previsionnel>();
            this.station_type = new HashSet<station_type>();
        }
    
        public int id_station { get; set; }
        public string nom_station { get; set; }
        public string adresse { get; set; }
        public string telephone { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Centrale_Stock> Centrale_Stock { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Planing_Previsionnel> Planing_Previsionnel { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<station_type> station_type { get; set; }
    }
}
