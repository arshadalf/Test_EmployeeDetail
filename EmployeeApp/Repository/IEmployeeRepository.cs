using EmployeeApp.Models;
using EmployeeApp.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EmployeeApp.Repository
{
    public interface IEmployeeRepository
    {
        IEnumerable<EmployeeViewModel> GetAll();
    }
}
