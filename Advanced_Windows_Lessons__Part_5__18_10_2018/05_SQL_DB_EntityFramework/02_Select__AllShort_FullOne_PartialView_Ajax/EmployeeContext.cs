using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data.Entity;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;


namespace Select__AllShort_FullOne_PartialView_Ajax.Models
{
    public class EmployeeContext : DbContext
    {
        public virtual DbSet<Employee> Employees { get; set; }
        public virtual DbSet<EmployeeFull> EmployeesFull { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
    {   
         modelBuilder.Entity<Employee>()   
            .HasRequired(e => e._EmployeeFull)
            .WithRequiredDependent(e => e.Employee);   
    }






/*
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Employee>().ToTable("Employees");
            base.OnModelCreating(modelBuilder);

            modelBuilder.Entity<EmployeeFull>().ToTable("Employees");
            base.OnModelCreating(modelBuilder);
        }
        */


    }
}