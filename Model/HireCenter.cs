//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace HireCompany.Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class HireCenter
    {
        public int CenterID { get; set; }
        public int GovernorateID { get; set; }
        public string Description { get; set; }
        public string Region { get; set; }
    
        public virtual Governorate Governorate { get; set; }
    }
}
