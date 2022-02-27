using System.ComponentModel.DataAnnotations;

namespace BBlogApi.DataAccess
{
    public class Employee
    {
        [Key]
        public int Id { get; set; }
        public string Name { get; set; }
    }
}
