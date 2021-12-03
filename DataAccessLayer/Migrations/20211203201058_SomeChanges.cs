using Microsoft.EntityFrameworkCore.Migrations;

namespace DataAccessLayer.Migrations
{
    public partial class SomeChanges : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Writers_City_CityId",
                table: "Writers");

            migrationBuilder.DropPrimaryKey(
                name: "PK_City",
                table: "City");

            migrationBuilder.RenameTable(
                name: "City",
                newName: "Cities");

            migrationBuilder.AddPrimaryKey(
                name: "PK_Cities",
                table: "Cities",
                column: "CityId");

            migrationBuilder.AddForeignKey(
                name: "FK_Writers_Cities_CityId",
                table: "Writers",
                column: "CityId",
                principalTable: "Cities",
                principalColumn: "CityId",
                onDelete: ReferentialAction.Restrict);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Writers_Cities_CityId",
                table: "Writers");

            migrationBuilder.DropPrimaryKey(
                name: "PK_Cities",
                table: "Cities");

            migrationBuilder.RenameTable(
                name: "Cities",
                newName: "City");

            migrationBuilder.AddPrimaryKey(
                name: "PK_City",
                table: "City",
                column: "CityId");

            migrationBuilder.AddForeignKey(
                name: "FK_Writers_City_CityId",
                table: "Writers",
                column: "CityId",
                principalTable: "City",
                principalColumn: "CityId",
                onDelete: ReferentialAction.Restrict);
        }
    }
}
