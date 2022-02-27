using BBlogApi.DataAccess;
using Microsoft.AspNetCore.Mvc;
using System.Linq;

namespace BBlogApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class EmployeeController : ControllerBase
    {
        [HttpGet]
        public IActionResult GetEmployees()
        {
            using (Context c = new Context())
            {
                var employees = c.Employees.ToList();
                return Ok(employees);
            }
        }
        [HttpPost]
        public IActionResult AddEmployee(Employee employee)
        {
            using (Context c = new Context())
            {
                c.Add(employee);
                c.SaveChanges();
                return Ok();
            }
        }
        [HttpGet("{id}")]
        public IActionResult GetEmployeeById(int id)
        {
            using (Context c = new Context())
            {
                var employee = c.Employees.Find(id);
                if (employee == null)
                    return NotFound();
                else
                    return Ok(employee);
            }
        }
        [HttpDelete("{id}")]
        public IActionResult DeleteEmployee(int id)
        {
            using (Context c = new Context())
            {
                var employee = c.Employees.Find(id);
                if (employee == null)
                    return NotFound();
                else
                {
                    c.Remove(employee);
                    c.SaveChanges();
                    return Ok();
                }
            }
        }
        [HttpPut]
        public IActionResult UpdateEmployee(Employee employee)
        {
            using (Context c = new Context())
            {
                var emp = c.Employees.Find(employee.Id);
                if (emp == null)
                    return NotFound();
                else
                {
                    emp.Name = employee.Name;
                    c.Update(emp);
                    c.SaveChanges();
                    return Ok();
                }
            }
        }
    }
}
