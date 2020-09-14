using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Web;

namespace EmployeeApp.ViewModel
{
    public class EmployeeViewModel
    {
        public int ID { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Gender { get; set; }
        public Nullable<decimal> Salary { get; set; }
        public Nullable<int> Age { get; set; }
        public string Department { get; set; }

        [DisplayName("Age Above Average")]
        public bool AgeAboveAverage { get; set; }

        [DisplayName("Salary Above Average")]
        public bool SalaryAboveAverage { get; set; }

        public double? AgeAverage { get; set; }
        public decimal? SalaryAverage { get; set; }
    }
}