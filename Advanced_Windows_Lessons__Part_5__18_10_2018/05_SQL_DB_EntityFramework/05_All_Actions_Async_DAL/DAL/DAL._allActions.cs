using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using MVC_SQL_DB.Models;
using System.Threading.Tasks;

namespace MVC_SQL_DB.DAL
{
    public class DAL_allActions
    {
        EmployeeContext db = new EmployeeContext();

        public async Task<IEnumerable<Employee>> selectAll()
        {
            IEnumerable<Employee> Employees = await Task.Run(() => db.Employees);   
//          IEnumerable<Employee> Employees = await Task.Run(() =>  db.Employees.Where(s => s.picture != null));
            return Employees;         
        }

        public async Task<int> NewEmployee_Empty()
        {
            Employee enpty = new Employee();
            enpty.id = -1;
            enpty.firstName = "";
            enpty.lastName = "";
            db.Employees.Add(enpty);
            await db.SaveChangesAsync();

            int primaryKey = enpty.id;
            return primaryKey;
        }

        public async Task DeleteEmployee(int ID)
        {
            Employee DeleteEmployee = await db.Employees.FindAsync(ID);
            db.Employees.Remove(DeleteEmployee);
            await db.SaveChangesAsync();
        }
        public async Task<string> UpdateEmployee(int ID, string FirstName, string LastName)
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