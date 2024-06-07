using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Infra.Migrations
{
    /// <inheritdoc />
    public partial class first : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "SubjectStreamTbl",
                columns: table => new
                {
                    SubjectStreamID = table.Column<long>(type: "bigint", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    StreamName = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_SubjectStreamTbl", x => x.SubjectStreamID);
                });

            migrationBuilder.CreateTable(
                name: "TrainingCompanyTbl",
                columns: table => new
                {
                    TrainingCompanyID = table.Column<long>(type: "bigint", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CompanyName = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Address = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    EmailID = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    MobileNo = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    WebsiteUrl = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Password = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    TrainingCompanyID1 = table.Column<long>(type: "bigint", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_TrainingCompanyTbl", x => x.TrainingCompanyID);
                    table.ForeignKey(
                        name: "FK_TrainingCompanyTbl_TrainingCompanyTbl_TrainingCompanyID1",
                        column: x => x.TrainingCompanyID1,
                        principalTable: "TrainingCompanyTbl",
                        principalColumn: "TrainingCompanyID");
                });

            migrationBuilder.CreateTable(
                name: "UserTbl",
                columns: table => new
                {
                    UserID = table.Column<long>(type: "bigint", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    FirstName = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    LastName = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Address = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    EmailID = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    MobileNo = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Password = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_UserTbl", x => x.UserID);
                });

            migrationBuilder.CreateTable(
                name: "SubjecTbl",
                columns: table => new
                {
                    SubjectID = table.Column<long>(type: "bigint", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    SubjectName = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    SubjectStreamID = table.Column<long>(type: "bigint", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_SubjecTbl", x => x.SubjectID);
                    table.ForeignKey(
                        name: "FK_SubjecTbl_SubjectStreamTbl_SubjectStreamID",
                        column: x => x.SubjectStreamID,
                        principalTable: "SubjectStreamTbl",
                        principalColumn: "SubjectStreamID",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "OrderTbl",
                columns: table => new
                {
                    OrderID = table.Column<long>(type: "bigint", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    OrderDate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    UserID = table.Column<long>(type: "bigint", nullable: false),
                    IsPaid = table.Column<bool>(type: "bit", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_OrderTbl", x => x.OrderID);
                    table.ForeignKey(
                        name: "FK_OrderTbl_UserTbl_UserID",
                        column: x => x.UserID,
                        principalTable: "UserTbl",
                        principalColumn: "UserID",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "CourseTbl",
                columns: table => new
                {
                    CourseID = table.Column<long>(type: "bigint", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CourseName = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    SubjectID = table.Column<long>(type: "bigint", nullable: false),
                    CourseDescription = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DurationInHours = table.Column<int>(type: "int", nullable: false),
                    Prerequisite = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Price = table.Column<decimal>(type: "decimal(18,2)", nullable: false),
                    ImageFilePath = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    TrainingCompanyID = table.Column<long>(type: "bigint", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CourseTbl", x => x.CourseID);
                    table.ForeignKey(
                        name: "FK_CourseTbl_SubjecTbl_SubjectID",
                        column: x => x.SubjectID,
                        principalTable: "SubjecTbl",
                        principalColumn: "SubjectID",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_CourseTbl_TrainingCompanyTbl_TrainingCompanyID",
                        column: x => x.TrainingCompanyID,
                        principalTable: "TrainingCompanyTbl",
                        principalColumn: "TrainingCompanyID",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "OrderComplaintTbl",
                columns: table => new
                {
                    OrderComplaintID = table.Column<long>(type: "bigint", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    ComplaintDate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    OrderID = table.Column<long>(type: "bigint", nullable: false),
                    ComplaintTitle = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ComplaintDescription = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_OrderComplaintTbl", x => x.OrderComplaintID);
                    table.ForeignKey(
                        name: "FK_OrderComplaintTbl_OrderTbl_OrderID",
                        column: x => x.OrderID,
                        principalTable: "OrderTbl",
                        principalColumn: "OrderID",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "OrderPaymentTbl",
                columns: table => new
                {
                    OrderPaymentID = table.Column<long>(type: "bigint", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    OrderID = table.Column<long>(type: "bigint", nullable: false),
                    PaymentDate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    Amount = table.Column<decimal>(type: "decimal(18,2)", nullable: false),
                    PaymentMode = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_OrderPaymentTbl", x => x.OrderPaymentID);
                    table.ForeignKey(
                        name: "FK_OrderPaymentTbl_OrderTbl_OrderID",
                        column: x => x.OrderID,
                        principalTable: "OrderTbl",
                        principalColumn: "OrderID",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "CartTbl",
                columns: table => new
                {
                    CartID = table.Column<long>(type: "bigint", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    UserID = table.Column<long>(type: "bigint", nullable: false),
                    CourseID = table.Column<long>(type: "bigint", nullable: false),
                    Qty = table.Column<int>(type: "int", nullable: false),
                    Price = table.Column<decimal>(type: "decimal(18,2)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CartTbl", x => x.CartID);
                    table.ForeignKey(
                        name: "FK_CartTbl_CourseTbl_CourseID",
                        column: x => x.CourseID,
                        principalTable: "CourseTbl",
                        principalColumn: "CourseID",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_CartTbl_UserTbl_UserID",
                        column: x => x.UserID,
                        principalTable: "UserTbl",
                        principalColumn: "UserID",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "OrderDetTbl",
                columns: table => new
                {
                    OrderDetID = table.Column<long>(type: "bigint", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    OrderID = table.Column<long>(type: "bigint", nullable: false),
                    CourseID = table.Column<long>(type: "bigint", nullable: false),
                    Price = table.Column<decimal>(type: "decimal(18,2)", nullable: false),
                    Qty = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_OrderDetTbl", x => x.OrderDetID);
                    table.ForeignKey(
                        name: "FK_OrderDetTbl_CourseTbl_CourseID",
                        column: x => x.CourseID,
                        principalTable: "CourseTbl",
                        principalColumn: "CourseID",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_OrderDetTbl_OrderTbl_OrderID",
                        column: x => x.OrderID,
                        principalTable: "OrderTbl",
                        principalColumn: "OrderID",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "OrderComplaintSolutionTbl",
                columns: table => new
                {
                    OrderComplaintSolutionID = table.Column<long>(type: "bigint", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    OrderComplaintID = table.Column<long>(type: "bigint", nullable: false),
                    SolutionDate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    SolutionTitle = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    SolutionDesc = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_OrderComplaintSolutionTbl", x => x.OrderComplaintSolutionID);
                    table.ForeignKey(
                        name: "FK_OrderComplaintSolutionTbl_OrderComplaintTbl_OrderComplaintID",
                        column: x => x.OrderComplaintID,
                        principalTable: "OrderComplaintTbl",
                        principalColumn: "OrderComplaintID",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.InsertData(
                table: "TrainingCompanyTbl",
                columns: new[] { "TrainingCompanyID", "Address", "CompanyName", "EmailID", "MobileNo", "Password", "TrainingCompanyID1", "WebsiteUrl" },
                values: new object[] { 1L, "Akurdi Pune", "RI-TECH", "contact@ritechpune.com", "978686787686", "abcd", null, "https://www.ritechpune.com" });

            migrationBuilder.CreateIndex(
                name: "IX_CartTbl_CourseID",
                table: "CartTbl",
                column: "CourseID");

            migrationBuilder.CreateIndex(
                name: "IX_CartTbl_UserID",
                table: "CartTbl",
                column: "UserID");

            migrationBuilder.CreateIndex(
                name: "IX_CourseTbl_SubjectID",
                table: "CourseTbl",
                column: "SubjectID");

            migrationBuilder.CreateIndex(
                name: "IX_CourseTbl_TrainingCompanyID",
                table: "CourseTbl",
                column: "TrainingCompanyID");

            migrationBuilder.CreateIndex(
                name: "IX_OrderComplaintSolutionTbl_OrderComplaintID",
                table: "OrderComplaintSolutionTbl",
                column: "OrderComplaintID");

            migrationBuilder.CreateIndex(
                name: "IX_OrderComplaintTbl_OrderID",
                table: "OrderComplaintTbl",
                column: "OrderID");

            migrationBuilder.CreateIndex(
                name: "IX_OrderDetTbl_CourseID",
                table: "OrderDetTbl",
                column: "CourseID");

            migrationBuilder.CreateIndex(
                name: "IX_OrderDetTbl_OrderID",
                table: "OrderDetTbl",
                column: "OrderID");

            migrationBuilder.CreateIndex(
                name: "IX_OrderPaymentTbl_OrderID",
                table: "OrderPaymentTbl",
                column: "OrderID");

            migrationBuilder.CreateIndex(
                name: "IX_OrderTbl_UserID",
                table: "OrderTbl",
                column: "UserID");

            migrationBuilder.CreateIndex(
                name: "IX_SubjecTbl_SubjectStreamID",
                table: "SubjecTbl",
                column: "SubjectStreamID");

            migrationBuilder.CreateIndex(
                name: "IX_TrainingCompanyTbl_TrainingCompanyID1",
                table: "TrainingCompanyTbl",
                column: "TrainingCompanyID1");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "CartTbl");

            migrationBuilder.DropTable(
                name: "OrderComplaintSolutionTbl");

            migrationBuilder.DropTable(
                name: "OrderDetTbl");

            migrationBuilder.DropTable(
                name: "OrderPaymentTbl");

            migrationBuilder.DropTable(
                name: "OrderComplaintTbl");

            migrationBuilder.DropTable(
                name: "CourseTbl");

            migrationBuilder.DropTable(
                name: "OrderTbl");

            migrationBuilder.DropTable(
                name: "SubjecTbl");

            migrationBuilder.DropTable(
                name: "TrainingCompanyTbl");

            migrationBuilder.DropTable(
                name: "UserTbl");

            migrationBuilder.DropTable(
                name: "SubjectStreamTbl");
        }
    }
}
