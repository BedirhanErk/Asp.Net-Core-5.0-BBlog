using Microsoft.EntityFrameworkCore.Migrations;

namespace DataAccessLayer.Migrations
{
    public partial class AboutAndContactChange2 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "MapLocation",
                table: "Contacts");

            migrationBuilder.AddColumn<string>(
                name: "MapLocation",
                table: "Abouts",
                type: "nvarchar(max)",
                nullable: true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "MapLocation",
                table: "Abouts");

            migrationBuilder.AddColumn<string>(
                name: "MapLocation",
                table: "Contacts",
                type: "nvarchar(max)",
                nullable: true);
        }
    }
}
