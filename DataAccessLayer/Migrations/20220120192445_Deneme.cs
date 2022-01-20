using Microsoft.EntityFrameworkCore.Migrations;

namespace DataAccessLayer.Migrations
{
    public partial class Deneme : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "BlogRatingId",
                table: "Blogs",
                type: "int",
                nullable: true);

            migrationBuilder.CreateTable(
                name: "Denemes",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1")
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Denemes", x => x.Id);
                });

            migrationBuilder.CreateIndex(
                name: "IX_Blogs_BlogRatingId",
                table: "Blogs",
                column: "BlogRatingId");

            migrationBuilder.AddForeignKey(
                name: "FK_Blogs_BlogRatings_BlogRatingId",
                table: "Blogs",
                column: "BlogRatingId",
                principalTable: "BlogRatings",
                principalColumn: "BlogRatingId",
                onDelete: ReferentialAction.Restrict);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Blogs_BlogRatings_BlogRatingId",
                table: "Blogs");

            migrationBuilder.DropTable(
                name: "Denemes");

            migrationBuilder.DropIndex(
                name: "IX_Blogs_BlogRatingId",
                table: "Blogs");

            migrationBuilder.DropColumn(
                name: "BlogRatingId",
                table: "Blogs");
        }
    }
}
