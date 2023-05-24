<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PlanningPrevisionnel.aspx.cs" Inherits="ApplicationCharbon.UI.PlanningPrevisionnel" %>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <title>Planning Prévisionnel</title>
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
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/aos@2.3.4/dist/aos.css">

    <link rel="stylesheet" href="../../Assets/CSS/Style.css" />
    <link rel="stylesheet" href="../../Assets/CSS/StyleSheet.css" />
    <link rel="stylesheet" href="../../Assets/CSS/index.css" />
    <style>
        table, .btn-success, .search-form .form-control {
            box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;
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
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <scriptr>
        <script>
            AOS.init();
        </script>
    </scriptr>
    <!-- BOX ICONS CSS-->
    <link href="https://cdn.jsdelivr.net/npm/boxicons@2.0.5/css/boxicons.min.css" rel="stylesheet" />

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


                        <a href="PlanningPrevisionnel.aspx" id="Planning_Previsionnel" class="list-group-item list-group-item-action active" aria-current="true">
                            <i class="bi bi-calendar-event"></i>Planning Prévisionnel
                        </a>
                        <a href="../AppelOffre/AppelOffre.aspx" id="Appel_Offre" class="list-group-item list-group-item-action " aria-current="true">
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
                    <h2>Plannings Prévisionnel</h2>
                    <p class="section" data-aos="fade-up">
                        Cette section affiche un tableau contenant des données sur des plannings prévisionnel de stations de charbon.
                    </p>
                </div>



                <div class="card shadow border-0 mb-7">
                    <div class="table-responsive table_PV " data-aos="fade-up">
                        <div class="d-flex justify-content-between align-items-center form-group">
                            <div class="d-flex align-items-center">
                                <button type="button" class="btn btn-success btn-lg " data-bs-toggle="modal" data-bs-target="#addPVModal">
                                    <i class="bi bi-plus-lg"></i>
                                    <span class="d-none d-md-inline-block">Ajouter un Appel d'Offre</span>
                                </button>
                            </div>
                            <div class="ms-3 search-form">
                            </div>
                            <div class="d-flex justify-content-center ">
                                <form class="d-flex">
                                    <input class="form-control  me-2" type="search" placeholder="Rechercher  ..." aria-label="Search" />
                                </form>
                            </div>


                        </div>
                        <table class="table table-hover table-nowrap">
                            <thead class="thead-light">
                                <tr class="text-center">

                                    <th class="text-center">Id planning</th>
                                    <th class="text-center">Nom station</th>
                                    <th class="text-center">Annee</th>
                                    <th class="text-center">Fichier Excel</th>
                                    <th class="text-center">Action</th>
                                </tr>
                            </thead>
                            <tbody class="text-center">
                                <%@ Import Namespace="ApplicationCharbon.Services" %>
                                <% var service = new CharbonAccessService();%>

                                <% var va = service.GetMyDataPV();
                                    foreach (var tp in va)
                                    { %>
                                <tr>
                                    <td><%= tp.id_planning %></td>
                                    <td><%= tp.nom_station %></td>
                                    <td><%= tp.annee %></td>
                                    <td>
                                        <%@ Import Namespace="System.IO" %>

                                        <% if (!string.IsNullOrEmpty(tp.fichier_excel))
                                            { %>

                                        <a href="../../Assets/excelFile/<%= tp.fichier_excel %>" download="download">
                                            <i class=" bi bi-download me-2 justify-content-center"></i><%= Path.GetFileName(tp.fichier_excel) %>   
                                        </a>
                                        <% } %>

                                    </td>
                                    <td style="white-space: nowrap;">
                                        <a type="button" class="edit-PV" href="#" data-toggle="modal" data-pvid="<%= tp.id_planning %>">
                                            <i class="btn-edit bi bi-pen me-2" title="Modifier" style="color: orange;"></i>
                                        </a>
                                        <a href="#" class="delete-PV" data-toggle="modal" data-pvid='<%= tp.id_planning %>'>
                                            <i class="bi bi-x-lg" title="Supprimer" style="color: red;"></i>
                                        </a>
                                    </td>


                                </tr>
                                <% } %>
                            </tbody>
                        </table>
                    </div>
                </div>

            </div>
        </div>
    </div>

    <!-- Ajouter PV -->
    <div class="modal fade" id="addPVModal" tabindex="-1" aria-labelledby="addPVModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <form id="Form1" runat="server" method="post" enctype="multipart/form-data">
                    <div class="modal-header">
                        <h2 class="modal-title" id="ajouterPVModalLabel">Ajouter un Planning Prévisionnel</h2>
                        <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
                    </div>

                    <div class="modal-body">
                        <div class="form-group">
                            <label>Nom Station</label>
                            <asp:DropDownList ID="nomstationListe" runat="server" class="form-select"></asp:DropDownList>
                        </div>
                        <div class="form-group">
                            <label>Année</label>
                            <select class="form-select" id="annee" runat="server" required="required">
                                <option value="">Sélectionnez une année</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Importer un fichier Excel</label>
                            <input runat="server" type="file" name="oFile" id="oFile" />
                        </div>
                    </div>
                    <div class="modal-footer">
                        <asp:Button type="submit" Text="Ajouter un Planning Prévisionnel" class="btn btn-success" OnClick="AddButton_PV_Click" runat="server"></asp:Button>
                        <asp:Button runat="server" Text="Annuler" CssClass="btn btn-secondary" data-dismiss="modal" />
                    </div>
                </form>
            </div>
        </div>
    </div>
    <script>
        var startYear = new Date().getFullYear() - 10;
        var endYear = new Date().getFullYear();
        var options = "";

        for (var year = endYear; year >= startYear; year--) {
            options += "<option value='" + year + "'>" + year + "</option>";
        }

        document.getElementById("annee").innerHTML += options;
    </script>
    <!-- Edit Planning Prévisionnel -->
    <% Server.Transfer("updatePlanningPrevisionnel.aspx");%>
</body>
</html>
