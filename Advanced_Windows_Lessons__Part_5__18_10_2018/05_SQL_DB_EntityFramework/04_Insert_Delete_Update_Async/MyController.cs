using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

using MVC_SQL_DB.Models;
using System.Threading.Tasks;

namespace MVC_SQL_DB.Controllers
{
    public class MyController : Controller
    {
        EmployeeContext db = new EmployeeContext();

        public async Task<ViewResult> Index()
        {
            IEnumerable<Employee> Employees = await Task.Run(() => db.Employees);
//          IEnumerable<Employee> Employees = await Task.Run(() =>  db.Employees.Where(s => s.picture != null));
            return View(Employees);
        }

        [HttpGet]
        public async Task<string> ActionInsert()
        {
            Employee enpty = new Employee();
            enpty.id = -1;
            enpty.firstName = "";
            enpty.lastName = "";
            db.Employees.Add(enpty);
            await db.SaveChangesAsync();

            int primaryKey = enpty.id;

            return primaryKey.ToString();
        }

        [HttpPost]
        public async Task<string> ActionDelete(int ID)
        {
            Employee DeleteEmployee = await db.Employees.FindAsync(ID);
            db.Employees.Remove(DeleteEmployee);
            await db.SaveChangesAsync();
            return "Employee Deleted Successfully";
        }

        [HttpPost]
        public async Task<string> ActionUpdate(int ID, string FirstName, string LastName)
        {
            Employee UpdateEmployee = await db.Employees.FindAsync(ID);
            if (UpdateEmployee != null)
            {
                UpdateEmployee.firstName = FirstName;
                UpdateEmployee.lastName = LastName;
                await db.SaveChangesAsync();
                return "Employee Updated Successfully";
            }
            return "Updated Error";
        }
    }
}
