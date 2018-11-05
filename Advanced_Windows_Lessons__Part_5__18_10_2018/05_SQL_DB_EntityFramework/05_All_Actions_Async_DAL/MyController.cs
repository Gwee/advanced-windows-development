using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

using MVC_SQL_DB.Models;
using System.Threading.Tasks;
using MVC_SQL_DB.DAL;

namespace MVC_SQL_DB.Controllers
{
    public class MyController : Controller
    {
        DAL_allActions myDAL = new DAL_allActions();

        public async Task<ViewResult> Index()
        {
            IEnumerable<Employee> Employees = await Task.Run(() => myDAL.selectAll());
            return View(Employees);
        }

        [HttpGet]
        public async Task<string> ActionInsert()
        {
            int primaryKey = await Task.Run(() => myDAL.NewEmployee_Empty());
            return primaryKey.ToString();
        }

        [HttpPost]
        public async Task<string> ActionDelete(int ID)
        {
            await Task.Run(() => myDAL.DeleteEmployee(ID));
            return "Employee Deleted Successfully";
        }

        [HttpPost]
        public async Task<string> ActionUpdate(int ID, string FirstName, string LastName)
        {
            string result = await Task.Run(() => myDAL.UpdateEmployee(ID, FirstName, LastName));
            return result;
        }
    }
}
