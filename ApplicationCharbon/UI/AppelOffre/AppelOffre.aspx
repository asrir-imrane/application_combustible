<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AppelOffre.aspx.cs" Inherits="ApplicationCharbon.UI.AppelOffre" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <title>Appel d'Offre</title>
    <!-- Fontawesome CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link href="https://fonts.googleapis.com/css?family=Dosis" rel="stylesheet" />

    <!-- Bootstrap 5 CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.2/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous" />
    <!-- Bootstrap Icons CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css" integrity="sha384-dtV5C5+mfIjJ8OvH0d7bzDJwIphlOaEJj/vxHgyV1pG9tX5Wj8oL5d5I7YoDQyCY" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css" />

    <link rel="stylesheet" href="../../Assets/CSS/Style.css" />
    <link rel="stylesheet" href="../../Assets/CSS/StyleSheet.css" />
    <link rel="stylesheet" href="../../Assets/CSS/index.css" />
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>


    <style>
        canvas {
            display: block;
            max-width: 800px;
            margin: 20px auto;
        }
    </style>
    <style>
        table, .btn-success, .search-form .form-control {
            box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;
        }

        .excel-form {
            background-color: #28a745;
            color: #fff;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            font-size: 23px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.2);
        }

            .excel-form:hover {
                background-color: #218838;
            }
    </style>
    <!-- Add Bootstrap JavaScript and jQuery -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="../../Assets/Scripts/nav.js"></script>
    <script src="../../Assets/Scripts/script.js"></script>

    <!-- BOX ICONS CSS-->
    <link href="https://cdn.jsdelivr.net/npm/boxicons@2.0.5/css/boxicons.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/aos@2.3.4/dist/aos.css">

    <script src="https://unpkg.com/exceljs/dist/exceljs.min.js"></script>
    <script src="https://unpkg.com/file-saver/dist/FileSaver.min.js"></script>
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <scriptr>
        <script>
            AOS.init();
        </script>
    </scriptr>

</head>
<body>
    <div class="container-fluid">
        <div class="row">
            <!-- Top bar -->
            <nav class="navbar navbar-expand-lg navbar-light bg-white fixed-top shadow p-3 mb-5 bg-white rounded">
                <div class="container-fluid">
                    <!-- Website logo -->
                    <img src="../../Assets/IMG/logo.png" alt="ONE" class="logo" />
                    <%-- <a class="navbar-brand" href="index.aspx">Application Charbon</a>--%>
                    <!-- Toggler button for mobile view -->
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <!-- Navigation links -->
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav ms-auto">
                            <li class="nav-item">
                                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-list-4" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                                    <span class="navbar-toggler-icon"></span>
                                </button>
                                <div class="collapse navbar-collapse" id="navbar-list-4">
                                    <ul class="navbar-nav">
                                        <li class="nav-item dropdown">
                                            <div class="user-profile">
                                                <%@ Import Namespace="ApplicationCharbon.Models" %>
                                                <% if (Session["UserLogin"] != null)
                                                    { %>
                                                <div class="user-initial"><%= Session["UserLogin"].ToString().Substring(0, 1).ToUpper() %></div>
                                                <div class="user-info">
                                                    <p><%= Session["UserLogin"] %></p>
                                                    <p>
                                                        <% foreach (string permission in ((string)Session["userPermissions"]).Split(new string[] { ", " }, StringSplitOptions.RemoveEmptyEntries))
                                                            { %>
                                                        <%= permission %><br />
                                                        <% } %>
                                                    </p>
                                                </div>
                                                <% } %>
                                            </div>
                                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></a>
                                            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">

                                                <a class="dropdown-item" href="Login/LoginForm.aspx">Déconnexion</a>
                                            </div>
                                        </li>
                                    </ul>
                                </div>

                            </li>
                        </ul>
                    </div>




                </div>
            </nav>
            <div class="col-md-3 col-lg-2">
                <div class="sidebar shadow p-3 mb-5 bg-white rounded">
                    <div class="list-group">
                        <a href="../index.aspx" class="list-group-item list-group-item-action ">
                            <i class="bi bi-speedometer2 me-2"></i>Tableau de bord
                        </a>

                        <a href="../Paramètre.aspx" id="Paramètre" class="list-group-item list-group-item-action " aria-current="true">
                            <i class="bi bi-sliders"></i>Paramètre
                        </a>
                        <ul class="submenu">
                            <li><a href="#">Station</a></li>
                            <li><a href="#">Origine</a></li>
                            <li><a href="#">Fournisseur</a></li>
                            <li><a href="#">Bateaux</a></li>
                            <li><a href="#">Type</a></li>
                            <li><a href="#">Stock</a></li>
                            <li><a href="#">Centrale Stock</a></li>

                        </ul>


                        <a href="../PlanningPrevisionnel/PlanningPrevisionnel.aspx" id="Planning_Previsionnel" class="list-group-item list-group-item-action " aria-current="true">
                            <i class="bi bi-calendar-event"></i>Planning Prévisionnel
                        </a>
                        <a href="AppelOffre.aspx" id="Appel_Offre" class="list-group-item list-group-item-action active" aria-current="true">
                            <i class="bi bi-list-columns"></i>Appel Offre
                        </a>
                        <a href="../Contrat/Contract.aspx" id="Contrat" class="list-group-item list-group-item-action" aria-current="true">
                            <i class="bi bi-file-earmark-post"></i>Contrat
                        </a>
                    </div>
                </div>
            </div>
            <!-- Main content -->
            <div class="col-md-9 col-lg-10 py-5">
                <div class="section-title" data-aos="fade-up">
                    <h2>Appel d'Offre</h2>
                    <p class="section">
                        Cette section affiche un tableau contenant des données sur des  Appel d'Offre et des options pour éditer ou supprimer les information.
                    </p>
                </div>



                <div class="container-fluid">

                    <!-- Card stats -->
                    <div class="row g-6 mb-6">
                        <%@ Import Namespace="ApplicationCharbon.Services" %>
                        <% var services = new CharbonAccessService();%>
                        <% var Validée = services.GetNumberOfValidatedAppelOffre(); %>
                        <% var Rejected = services.GetNumberOfRejectedAppelOffre(); %>
                        <% var Attent = services.GetNumberOfAttentAppelOffre(); %>
                        <div class="col-xl-3 col-sm-6 col-12" data-aos="fade-right">
                            <div class="card shadow border-0" id="validated-card">
                                <div class="card-body">
                                    <div class="row Validée">

                                        <div class="col" id="validée-row">
                                            <span class="h6 font-semibold text-muted text-sm d-block mb-2">Appel d'Offre</span>
                                            <span class="h3 font-bold mb-0"><%= Validée %></span>
                                        </div>

                                        <div class="mt-2 mb-0 text-sm">
                                            <span class="h6 font-semibold text-muted text-sm d-block mb-2">&#x1F7E2; Validée</span>

                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>

                        <div class="col-xl-3 col-sm-6 col-12" data-aos="fade-upd">
                            <div class="card shadow border-0" id="pending-card">
                                <div class="card-body">
                                    <div class="row attente">

                                        <div class="col" id="attente-row">
                                            <span class="h6 font-semibold text-muted text-sm d-block mb-2">Appel d'Offre</span>
                                            <span class="h3 font-bold mb-0"><%= Attent %></span>
                                        </div>

                                        <div class="mt-2 mb-0 text-sm">
                                            <span class="h6 font-semibold text-muted text-sm d-block mb-2">&#x1F7E1; En attente</span>

                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>

                        <div class="col-xl-3 col-sm-6 col-12" data-aos="fade-left">
                            <div class="card shadow border-0" id="rejected-card">
                                <div class="card-body">
                                    <div class="row Rejetée">
                                        <div class="col" id="rejetee-row">
                                            <span class="h6 font-semibold text-muted text-sm d-block mb-2">Appel d'Offre</span>
                                            <span class="h3 font-bold mb-0"><%= Rejected %></span>
                                        </div>

                                        <div class="mt-2 mb-0 text-sm">
                                            <span class="h6 font-semibold text-muted text-sm d-block mb-2">&#x1F534; Rejetée</span>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>

                </div>




                <div class="container-fluid p-3" id="table-container">

                    <div class="card shadow border-0 mb-7" data-aos="fade-up">
                        <div class="table-responsive">
                            <div class="d-flex justify-content-between align-items-center form-group">
                                <div class="d-flex align-items-center">
                                    <button type="button" class="btn btn-success btn-lg " data-bs-toggle="modal" data-bs-target="#ajouterAppelOffre">
                                        <i class="bi bi-plus-lg"></i>
                                        <span class="d-none d-md-inline-block">Ajouter un Appel d'Offre</span>
                                    </button>
                                </div>
                                <div class="d-flex justify-content-center">
                                    <button class="excel-form btn btn-success me-2" type="button" onclick="exportTableToExcel()">
                                        <i class="bi bi-file-excel me-2"></i>Exporter format Excel
   
                                    </button>

                                    <button class="pdf-form btn btn-success" type="button" onclick="exportTableToPDF()">
                                        <i class="bi bi-file-pdf-fill me-2"></i>Export as PDF
                                    </button>


                                </div>


                            </div>
                            <table id="status-table" class="table table-hover table-nowrap">
                                <thead class="thead-light">
                                    <tr class="text-center">
                                        <th>Id Apple d'Offre</th>
                                        <th>Type</th>
                                        <th>Tonnage</th>
                                        <th>Nbr Bateaux</th>
                                        <th>Date Creation</th>
                                        <th>Date Emission</th>
                                        <th>Date Livraison</th>
                                        <th>Observation</th>
                                        <th>Statut</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%@ Import Namespace="ApplicationCharbon.Services" %>
                                    <% var service = new CharbonAccessService();%>
                                    <% var va = service.GetMyDataAppelOffre();
                                        foreach (var tp in va)
                                        { %>
                                    <tr class="text-center <%= tp.statut %>">
                                        <td><%= tp.id_appOffre %></td>
                                        <td><%= tp.type %></td>
                                        <td><%= tp.tonnage %></td>
                                        <td><%= tp.nbr_bateaux %></td>
                                        <td><%= tp.date_creation.ToString("yyyy-MM-dd") %></td>
                                        <td><%= tp.date_Emission.ToString("yyyy-MM-dd") %></td>
                                        <td><%= tp.date_livraison.ToString("yyyy-MM-dd") %></td>
                                        <td><%= tp.observation %></td>
                                        <td>
                                            <div style="display: flex; align-items: flex-start;">
                                                <% if (tp.statut == "validee")
                                                    { %>
                                             &#x1F7E2;
 
                                            <% }
                                                else if (tp.statut == "en_attente")
                                                { %>
                                            &#x1F7E1;
 
                                            <% }
                                                else if (tp.statut == "rejetee")
                                                { %>
                                            &#x1F534;
 
                                            <% } %>
                                                <%= tp.statut %>
                                            </div>
                                        </td>
                                        <td style="white-space: nowrap;">
                                            <a type="button" class="edit-AO" href="#" data-toggle="modal" data-appoffreid="<%= tp.id_appOffre %>" data-planingid="<%= tp.id_planning %>" data-types="<%= tp.type %>" data-tonn="<%= tp.tonnage %>" data-nbr="<%= tp.nbr_bateaux %>" data-creation="<%= tp.date_creation %>" data-emission="<%= tp.date_Emission %>" data-livraison="<%= tp.date_livraison %>" data-obser="<%= tp.observation %>" data-stat="<%= tp.statut %>">
                                                <i class="btn-edit bi bi-pen me-2" title="Modifier" style="color: orange;"></i>
                                            </a>
                                            <a href="#" class="delete-AO" data-toggle="modal" data-appoffreid='<%= tp.id_appOffre %>'>
                                                <i class="bi bi-x-lg" title="Supprimer" style="color: red;"></i>
                                            </a>
                                        </td>
                                    </tr>
                                    <% } %>
                                </tbody>
                            </table>
                            <script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.2/html2pdf.bundle.min.js"></script>

                            <script>
                                function exportTableToPDF() {
                                    var element = document.getElementById('status-table');

                                    var currentDate = new Date();
                                    var formattedDate =
                                        currentDate.getFullYear() +
                                        '-' +
                                        (currentDate.getMonth() + 1) +
                                        '-' +
                                        currentDate.getDate();
                                    var opt = {
                                        margin: 0,
                                        filename: 'appel_offre_' + formattedDate + '.pdf',
                                        image: { type: 'jpeg', quality: 0.98 },
                                        html2canvas: { scale: 2 },
                                        jsPDF: { unit: 'in', format: 'letter', orientation: 'portrait' }
                                    };

                                    html2pdf().set(opt).from(element).save();
                                }


                                function exportTableToExcel() {
                                    var table = document.getElementById('status-table');

                                    // Create a new Excel Workbook
                                    var workbook = new ExcelJS.Workbook();
                                    var worksheet = workbook.addWorksheet('Table Data');

                                    // Get the header row from the table
                                    var headerRow = table.querySelector('thead tr');

                                    // Iterate through each cell in the header row and add the data to the Excel worksheet
                                    headerRow.querySelectorAll('th:not(:last-child)').forEach(function (
                                        cell,
                                        cellIndex
                                    ) {
                                        worksheet.getCell(1, cellIndex + 1).value = cell.innerText;
                                        worksheet.getCell(1, cellIndex + 1).fill = {
                                            type: 'pattern',
                                            pattern: 'solid',
                                            fgColor: { argb: 'FFCCCCCC' },
                                        };
                                        worksheet.getCell(1, cellIndex + 1).font = {
                                            bold: true,
                                        };
                                    });

                                    // Get the data rows from the table body
                                    var dataRows = table.querySelectorAll('tbody tr');

                                    // Iterate through each data row and add the data to the Excel worksheet
                                    dataRows.forEach(function (row, rowIndex) {
                                        var rowData = [];
                                        row.querySelectorAll('td:not(:last-child)').forEach(function (
                                            cell,
                                            cellIndex
                                        ) {
                                            rowData[cellIndex + 1] = cell.innerText;
                                        });
                                        worksheet.addRow(rowData);

                                        worksheet.getRow(rowIndex + 2).fill = {
                                            type: 'pattern',
                                            pattern: 'solid',
                                            fgColor: { argb: rowIndex % 2 === 0 ? 'FFEFEFEF' : 'FFFFFFFF' },
                                        };
                                    });

                                    // Get the current date
                                    var currentDate = new Date();
                                    var formattedDate =
                                        currentDate.getFullYear() +
                                        '-' +
                                        (currentDate.getMonth() + 1) +
                                        '-' +
                                        currentDate.getDate();

                                    // Generate the file name with the current date
                                    var fileName = 'appel_offre_' + formattedDate + '.xlsx';

                                    // Save the workbook as an Excel file
                                    workbook.xlsx.writeBuffer().then(function (buffer) {
                                        saveAs(new Blob([buffer], { type: 'application/octet-stream' }), fileName);
                                    });
                                }
</script>

                        </div>




                    </div>

                </div>
                <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
                <script>
                    $(document).ready(function () {
                        // Click event listener for "Validée" row
                        $('#validée-row').click(function () {
                            // Show only rows with statut = "validee"
                            $('#table-container table tbody tr').hide();
                            $('#table-container table tbody tr.validee').show();
                        });

                        // Click event listener for "En attente" row
                        $('#attente-row').click(function () {
                            // Show only rows with statut = "en attente"
                            $('#table-container table tbody tr').hide();
                            $('#table-container table tbody tr.en_attente').show();
                        });

                        // Click event listener for "Rejetée" row
                        $('#rejetee-row').click(function () {
                            // Show only rows with statut = "rejetee"
                            $('#table-container table tbody tr').hide();
                            $('#table-container table tbody tr.rejetee').show();
                        });

                        // Click event listener for document body
                        $('body').click(function (event) {
                            // Check if the click occurred outside the card elements
                            if (!$(event.target).closest('.card').length) {
                                // Show all rows
                                $('#table-container table tbody tr').show();
                            }
                        });
                    });

</script>



            </div>
        </div>
    </div>
    <!-- script -->
    <script src="../Assets/Scripts/script.js"></script>

    <!-- Ajouter AppelOffre  -->
    <form runat="server">
        <div id="ajouterAppelOffre" class="modal fade" runat="server">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Ajouter Appel Offre</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <label>Id Planning</label>
                            <asp:DropDownList ID="idPlanningListe" runat="server" class="form-select"></asp:DropDownList>
                        </div>
                        <div class="form-group">
                            <label>Type</label>
                            <asp:DropDownList ID="nomTypeListe" runat="server" class="form-select"></asp:DropDownList>
                        </div>

                        <div class="form-group">
                            <label>Tonnage</label>
                            <input type="text" class="form-control" id="tonnage" runat="server" required="required" />
                        </div>

                        <div class="form-group">
                            <label>Nbr bateaux</label>
                            <input type="text" class="form-control" id="nbr_bateaux" runat="server" required="required" />
                        </div>
                        <div class="form-group">
                            <label>Date Creation</label>
                            <input type="date" class="form-control" id="date_creation" runat="server" required="required" />
                        </div>
                        <div class="form-group">
                            <label>Date Emission</label>
                            <input type="date" class="form-control" id="date_Emission" runat="server" required="required" />
                        </div>
                        <div class="form-group">
                            <label>Date Livraison</label>
                            <input type="date" class="form-control" id="date_livraison" runat="server" required="required" />
                        </div>

                        <div class="form-group">
                            <label for="observation">Observation</label>
                            <textarea type="text" class="form-control" id="observation" runat="server" required="required" rows="5"></textarea>
                        </div>
                        <div class="form-group">
                            <label>Statut</label>
                            <select class="form-select" id="status" runat="server" required="required">
                                <option value="validee">&#x1F7E2; Validée</option>
                                <option value="en_attente">&#x1F7E1; En attente</option>
                                <option value="rejetee">&#x1F534; Rejetée</option>
                            </select>
                        </div>


                    </div>
                    <div class="modal-footer">
                        <input type="button" class="btn btn-secondary" data-dismiss="modal" value="Annuler" />
                        <asp:Button type="submit" Text="Ajouter" class="btn btn-success" OnClick="AddButton_AO_Click" runat="server"></asp:Button>
                    </div>
                </div>
            </div>
        </div>
    </form>

    <!-- Edit Appel Offre -->
    <% Server.Transfer("updateAppelOffre.aspx");%>
</body>
</html>
