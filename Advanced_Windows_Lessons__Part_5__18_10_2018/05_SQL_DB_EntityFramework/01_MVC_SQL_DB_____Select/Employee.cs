using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MVC_SQL_DB.Models
{
    public class Employee
    {
        public int id { get; set; }
        public string firstName { get; set; }
        public string lastName { get; set; }
        public string picture { get; set; }
    }
}