using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;


namespace Select__AllShort_FullOne_PartialView_Ajax.Models
{

    [Table("Employees")]
    public class EmployeeFull
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int id { get; set; }
 //       public string firstName { get; set; }
 //       public string lastName { get; set; }
        public string title { get; set; }
        public string city { get; set; }
        public int managerId { get; set; }
        public string department { get; set; }
        public string officePhone { get; set; }
        public string cellPhone { get; set; }
        public string email { get; set; }

        public string picture { get; set; }

        public virtual Employee Employee { get; set; }
    }
}