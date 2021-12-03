using Microsoft.EntityFrameworkCore.Migrations;

namespace DataAccessLayer.Migrations
{
    public partial class AddCities : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "City",
                table: "Writers");

            migrationBuilder.AddColumn<int>(
                name: "CityId",
                table: "Writers",
                type: "int",
                nullable: true);

            migrationBuilder.CreateTable(
                name: "City",
                columns: table => new
                {
                    CityId = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Name = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_City", x => x.CityId);
                });

            migrationBuilder.CreateIndex(
                name: "IX_Writers_CityId",
                table: "Writers",
                column: "CityId");

            migrationBuilder.AddForeignKey(
                name: "FK_Writers_City_CityId",
                table: "Writers",
                column: "CityId",
                principalTable: "City",
                principalColumn: "CityId",
                onDelete: ReferentialAction.Restrict);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Writers_City_CityId",
                table: "Writers");

            migrationBuilder.DropTable(
                name: "City");

            migrationBuilder.DropIndex(
                name: "IX_Writers_CityId",
                table: "Writers");

            migrationBuilder.DropColumn(
                name: "CityId",
                table: "Writers");

            migrationBuilder.AddColumn<int>(
                name: "City",
                table: "Writers",
                type: "int",
                nullable: false,
                defaultValue: 0);
        }
    }
}
