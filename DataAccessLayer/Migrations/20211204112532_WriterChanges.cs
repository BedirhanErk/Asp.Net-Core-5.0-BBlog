using Microsoft.EntityFrameworkCore.Migrations;

namespace DataAccessLayer.Migrations
{
    public partial class WriterChanges : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "CityId",
                table: "Writers");

            migrationBuilder.AddColumn<string>(
                name: "CityName",
                table: "Writers",
                type: "nvarchar(max)",
                nullable: true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "CityName",
                table: "Writers");

            migrationBuilder.AddColumn<int>(
                name: "CityId",
                table: "Writers",
                type: "int",
                nullable: false,
                defaultValue: 0);
        }
    }
}
