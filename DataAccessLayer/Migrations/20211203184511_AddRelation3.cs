using Microsoft.EntityFrameworkCore.Migrations;

namespace DataAccessLayer.Migrations
{
    public partial class AddRelation3 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "CityId",
                table: "Writers",
                type: "int",
                nullable: true);

            migrationBuilder.CreateIndex(
                name: "IX_Writers_CityId",
                table: "Writers",
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

            migrationBuilder.DropIndex(
                name: "IX_Writers_CityId",
                table: "Writers");

            migrationBuilder.DropColumn(
                name: "CityId",
                table: "Writers");
        }
    }
}
