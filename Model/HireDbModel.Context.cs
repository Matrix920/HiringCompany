﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class HireDbEntities : DbContext
    {
        public HireDbEntities()
            : base("name=HireDbEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<CarFactory> CarFactories { get; set; }
        public virtual DbSet<Car> Cars { get; set; }
        public virtual DbSet<Company> Companies { get; set; }
        public virtual DbSet<Governorate> Governorates { get; set; }
        public virtual DbSet<HireCenter> HireCenters { get; set; }
        public virtual DbSet<Picture> Pictures { get; set; }
        public virtual DbSet<User> Users { get; set; }
        public virtual DbSet<Admin> Admins { get; set; }
    }
}