using Microsoft.EntityFrameworkCore.Migrations;

namespace DataAccessLayer.Migrations
{
    public partial class RemoveCity : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Writers_Cities_CityId",
                table: "Writers");

            migrationBuilder.DropTable(
                name: "Cities");

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

        protected override void Down(MigrationBuilder migrationBuilder)
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
                name: "Cities",
                columns: table => new
                {
                    CityId = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Name = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Cities", x => x.CityId);
                });

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
    }
}
