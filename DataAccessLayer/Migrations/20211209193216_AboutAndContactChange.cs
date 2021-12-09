using Microsoft.EntityFrameworkCore.Migrations;

namespace DataAccessLayer.Migrations
{
    public partial class AboutAndContactChange : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Image1",
                table: "Abouts");

            migrationBuilder.RenameColumn(
                name: "MapLocation",
                table: "Abouts",
                newName: "Title");

            migrationBuilder.RenameColumn(
                name: "Image2",
                table: "Abouts",
                newName: "Image");

            migrationBuilder.AddColumn<string>(
                name: "MapLocation",
                table: "Contacts",
                type: "nvarchar(max)",
                nullable: true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "MapLocation",
                table: "Contacts");

            migrationBuilder.RenameColumn(
                name: "Title",
                table: "Abouts",
                newName: "MapLocation");

            migrationBuilder.RenameColumn(
                name: "Image",
                table: "Abouts",
                newName: "Image2");

            migrationBuilder.AddColumn<string>(
                name: "Image1",
                table: "Abouts",
                type: "nvarchar(max)",
                nullable: true);
        }
    }
}
