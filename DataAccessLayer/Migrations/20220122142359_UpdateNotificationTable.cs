using Microsoft.EntityFrameworkCore.Migrations;

namespace DataAccessLayer.Migrations
{
    public partial class UpdateNotificationTable : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.RenameColumn(
                name: "TypeSymbol",
                table: "Notifications",
                newName: "TypeColor");

            migrationBuilder.AddColumn<string>(
                name: "Symbol",
                table: "Notifications",
                type: "nvarchar(max)",
                nullable: true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Symbol",
                table: "Notifications");

            migrationBuilder.RenameColumn(
                name: "TypeColor",
                table: "Notifications",
                newName: "TypeSymbol");
        }
    }
}
