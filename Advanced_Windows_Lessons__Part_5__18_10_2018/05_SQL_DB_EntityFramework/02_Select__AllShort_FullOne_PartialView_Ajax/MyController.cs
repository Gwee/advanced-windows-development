using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

using Select__AllShort_FullOne_PartialView_Ajax.Models;

namespace Select__AllShort_FullOne_PartialView_Ajax.Controllers
{
    public class MyController : Controller
    {
        EmployeeContext db = new EmployeeContext();
        public ActionResult Index()
        {
            IEnumerable<Employee> Employees = db.Employees;
            return View(Employees);
        }

        [HttpPost]
        public PartialViewResult Select_FullOne(int ID)
        {
            List<EmployeeFull> returnList = new List<EmployeeFull>();
            EmployeeFull aaaaaaaaaa = db.EmployeesFull.Find(ID);
            returnList.Add(aaaaaaaaaa);
           return PartialView("PartialView_OneFull", returnList);
        }
    }
}