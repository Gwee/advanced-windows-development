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

        [HttpPost]
        public ActionResult InsertAction(Employee Empl)
        {
            db.Employees.Add(Empl);
            //db.SaveChanges();
            db.SaveChangesAsync();
            return RedirectToAction("Index");
        }

        public ActionResult Insert()
        {
            return View();
        }

        [HttpGet]
        public ActionResult Delete(int ID)
        {
            Employee DeleteEmployee = db.Employees.Find(ID);
            db.Employees.Remove(DeleteEmployee);
            db.SaveChangesAsync();
            return RedirectToAction("Index");
        }

        [HttpPost]
        public ActionResult UpdateAction(Employee Empl)
        {
            Employee UpdateEmployee = db.Employees.Find(Empl.id);
            if (UpdateEmployee != null)
            {
                UpdateEmployee.firstName = Empl.firstName;
                UpdateEmployee.lastName = Empl.lastName;
                db.SaveChanges();
            }
            return RedirectToAction("Index");
        }

        [HttpGet]
        public ActionResult Update(int ID)
        {
            Employee UpdateEmployee = db.Employees.Find(ID);
            return View(UpdateEmployee);
        }
    }
}
