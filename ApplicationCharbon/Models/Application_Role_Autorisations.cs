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
    
    public partial class Application_Role_Autorisations
    {
        public int id_Application_role_aut { get; set; }
        public Nullable<int> id_Application { get; set; }
        public Nullable<int> id_utilisateur_role { get; set; }
        public Nullable<int> id_autorisation { get; set; }
    
        public virtual Application Application { get; set; }
        public virtual Autorisation Autorisation { get; set; }
        public virtual Utilisateur_Role Utilisateur_Role { get; set; }
    }
}
