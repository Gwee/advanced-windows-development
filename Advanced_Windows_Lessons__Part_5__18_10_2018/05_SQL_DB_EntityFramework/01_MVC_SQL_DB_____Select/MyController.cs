using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

using MVC_SQL_DB.Models; 

namespace MVC_SQL_DB.Controllers
{
    public class MyController : Controller
    {
        EmployeeContext db = new EmployeeContext();

        public ActionResult Index()
        {
            IEnumerable<Employee> Employees = db.Employees;
            return View(Employees);
        }
    }
}