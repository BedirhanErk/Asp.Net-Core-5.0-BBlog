using Microsoft.EntityFrameworkCore;

namespace BBlogApi.DataAccess
{
    public class Context : DbContext
    {
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer("server=DESKTOP-HCPLIHJ;database=BBlogApiDb;integrated security=true;");
        }
        public DbSet<Employee> Employees { get; set; }
    }
}
