using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace Select__AllShort_FullOne_PartialView_Ajax.Models
{
    [Table("Employees")]
    public class Employee
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int id { get; set; }
        public string firstName { get; set; }
        public string lastName { get; set; }
        //        public string picture { get; set; }

        [ForeignKey("id")]   
        public virtual EmployeeFull _EmployeeFull { get; set; }

    }
}