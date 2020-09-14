using EmployeeApp.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity.Infrastructure;
using EmployeeApp.ViewModel;
using System.Runtime.InteropServices.WindowsRuntime;

namespace EmployeeApp.Repository
{
    public class EmployeeRepository : IEmployeeRepository
    {
        private readonly DBEntities _context;
        public EmployeeRepository()
        {
            _context = new DBEntities();
        }
        public EmployeeRepository(DBEntities context)
        {
            _context = context;
        }

        public IEnumerable<EmployeeViewModel> GetAll()
        {
            var avgAge = _context.Employees.Average(x => x.Age);
            var avgSalary = _context.Employees.Average(x => x.Salary);

         return   _context.Employees.Select(x => new EmployeeViewModel
            {
                ID = x.ID,
                FirstName = x.FirstName,
                LastName = x.LastName,
                Gender = x.Gender,
                Salary = x.Salary,
                Age = x.Age,
                Department = x.Department,
                AgeAboveAverage = x.Age > avgAge,
                SalaryAboveAverage = x.Salary > avgSalary,
                AgeAverage = avgAge,
                SalaryAverage = avgSalary

            });

           

        }
   
    }

}
