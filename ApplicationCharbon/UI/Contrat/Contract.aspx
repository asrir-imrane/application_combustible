<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contract.aspx.cs" Inherits="ApplicationCharbon.UI.Contract" %>



<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <title>Contrat</title>
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
    <link rel="stylesheet" href="../../Assets/CSS/Contrat.css" />


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
                            <li><a href="#">Stock</a></li>
                        </ul>


                        <a href="../PlanningPrevisionnel/PlanningPrevisionnel.aspx" id="Planning_Previsionnel" class="list-group-item list-group-item-action " aria-current="true">
                            <i class="bi bi-calendar-event"></i>Planning Prévisionnel
                        </a>
                        <a href="../AppelOffre/AppelOffre.aspx" id="Appel_Offre" class="list-group-item list-group-item-action " aria-current="true">
                            <i class="bi bi-list-columns"></i>Appel Offre
                        </a>
                        <a href="Contract.aspx" id="Contrat" class="list-group-item list-group-item-action active" aria-current="true">
                            <i class="bi bi-file-earmark-post"></i>Contrat
                        </a>
                    </div>
                </div>
            </div>

            <!-- Main content -->
            <div class="col-md-9 col-lg-10 py-5">
                <div class="section-title" data-aos="fade-up">
                    <h2>Contrat</h2>
                    <p class="section">
                        Cette section "Contrat" affiche un tableau contenant des données sur des Contrat et des options pour éditer ou supprimer les information.
                    </p>
                </div>



                <div class="container-fluid p-3" id="table-container">
                    <div class="card shadow border-0 mb-7">
                        <div class="table-responsive table_PV " data-aos="fade-up">
                            <div class="d-flex justify-content-between align-items-center form-group">
                                <div class="d-flex align-items-center">
                                    <button type="button" class="btn btn-success btn-lg " data-bs-toggle="modal" data-bs-target="#ajouterContratModal">
                                        <i class="bi bi-plus-lg"></i>
                                        <span class="d-none d-md-inline-block">Ajouter une Contrat</span>
                                    </button>
                                </div>
                                <div class="ms-3 search-form">
                                    <div class="d-flex justify-content-center">
                                        <form class="d-flex">
                                            <input class="form-control me-2" id="searchInput" placeholder="Rechercher..." aria-label="Search" />
                                        </form>
                                    </div>
                                </div>



                            </div>
                            <span>&#x1F7E1;En Attente ,&#x1F7E2; Validée ,&#x1F534; Rejetée</span>
                            <div class="center" runat="server">
                                <ul>
                                    <%@ Import Namespace="ApplicationCharbon.Services" %>
                                    <% var service = new CharbonAccessService(); %>

                                    <% var va = service.GetMyDataContrat();
                                        foreach (var tp in va)
                                        { %>
                                    <li>
                                        <div class="image">
                                            <i class="bi bi-file-earmark-text" id="image-<%= tp.id_contrat %>"></i>
                                        </div>
                                        <div class="title_contrat">
                                            <h4>Nom Contrat : <%= tp.nom_contrat %></h4>
                                            <br />
                                            <p>Date Creation :<%= tp.date_creation.ToString("yyyy-MM-dd") %></p>
                                        </div>
                                        <div class="text-group">
                                            <p>ID Fournisseur :<%= tp.id_fournisseur %></p>
                                            <p>Quantite Total : <%= tp.quantite_total %></p>
                                            <p>Nombre de Cargaisons: <%= tp.nbr_cargaisons %></p>
                                        </div>
                                        <div class="date-group">
                                            <p>Type:<%= tp.type %></p>
                                            <p>Date Debut :<%= tp.date_debut.ToString("yyyy-MM-dd") %></p>
                                            <p>Date Fin : <%= tp.date_fin.ToString("yyyy-MM-dd") %></p>
                                        </div>
                                        <div class="action-group">
                                            <div class="button-box">
                                                <a type="button" class="edit edit-contrat" href="#" data-toggle="modal" data-contratid="<%= tp.id_contrat %>" data-contratdetailid="<%= tp.id_contDetails %>">
                                                    <i class="btn-edit bi bi-pen " title="Modifier" style="color: black;"></i>
                                                </a>
                                            </div>
                                            <br />
                                            <div class="button-box">
                                                <a type="button" href="#" class="delete delete-contrat" data-toggle="modal" data-contratid="<%= tp.id_contrat %>" data-contratdetailid="<%= tp.id_contDetails %>">
                                                    <i class="bi bi-x-lg" title="Supprimer" style="color: black;"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </li>

                                    <script>
                                        var statut = '<%= tp.statut %>';
                                        var imageElement = document.querySelector('#image-<%= tp.id_contrat %>');

                                        if (statut === 'en_attente') {
                                            imageElement.style.color = '#ffc107';
                                        } else if (statut === 'validee') {
                                            imageElement.style.color = '#28a745';
                                        } else if (statut === 'rejetee') {
                                            imageElement.style.color = '#FF0000';
                                        }
                                    </script>

                                    <% } %>
                                </ul>


                            </div>
                            <script>
                                function searchList() {
                                    var input = document.getElementById('searchInput').value.toLowerCase();
                                    var list = document.getElementsByTagName('li');

                                    for (var i = 0; i < list.length; i++) {
                                        var listItemText = list[i].innerText.toLowerCase();

                                        if (listItemText.includes(input)) {
                                            list[i].show();
                                        } else {
                                            list[i].style.display = 'none';
                                        }
                                    }
                                }


                                function showAll() {
                                    var list = document.getElementsByTagName('li');

                                    for (var i = 0; i < list.length; i++) {
                                        list[i].style.display = '';
                                    }
                                }

                                document.getElementById('searchInput').addEventListener('input', searchList);
                                document.addEventListener('click', function (event) {
                                    var searchInput = document.getElementById('searchInput');

                                    if (!searchInput.contains(event.target)) {
                                        showAll();
                                    }
                                });
                            </script>
                        </div>
                    </div>






                    <!-- Ajouter Contract Modal HTML -->
                    <div class="modal fade" id="ajouterContratModal" tabindex="-1" aria-labelledby="ajouterStockModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <form runat="server">
                                    <div class="modal-header">
                                        <h2 class="modal-title" id="ajouterStockModalLabel">Ajouter Contrat</h2>
                                        <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
                                    </div>

                                    <div class="modal-body">
                                        <div class="form-group">
                                            <label>Id Appel Offre</label>
                                            <asp:DropDownList ID="idAppOffreListe" runat="server" class="form-select" required="required"></asp:DropDownList>
                                        </div>

                                        <div class="form-group">
                                            <label>Nom Contrat</label>
                                            <input type="text" class="form-control" id="nom_contrat" runat="server" required="required" />
                                        </div>
                                        <div class="form-group">
                                            <label>Type</label>
                                            <asp:DropDownList ID="TypeListe" runat="server" class="form-select" required="required"></asp:DropDownList>
                                        </div>

                                        <div class="form-group">
                                            <label>Nom Fournisseur</label>
                                            <asp:DropDownList ID="FournisseurListe" runat="server" class="form-select"></asp:DropDownList>

                                        </div>
                                        <div class="form-group">
                                            <label>Nombre de cargaisons</label>
                                            <asp:TextBox type="number" ID="nbr_cargaison" runat="server" CssClass="form-control" required="required"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Quantite Total</label>
                                            <asp:TextBox type="number" ID="quantiteTotal" runat="server" CssClass="form-control" required="required"></asp:TextBox>

                                        </div>
                                        <div class="form-group">
                                            <label>Date Creation</label>
                                            <input type="date" class="form-control" id="date_creation" runat="server" required="required" />
                                        </div>
                                        <div class="form-group">
                                            <label>Date Debut</label>
                                            <input type="date" class="form-control" id="date_debut" runat="server" required="required" />
                                        </div>
                                        <div class="form-group">
                                            <label>Date Fin</label>
                                            <input type="date" class="form-control" id="date_fin" runat="server" required="required" />
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
                                        <asp:Button type="submit" Text="Ajouter" class="btn btn-success" OnClick="AddButton_Contrat_Click" runat="server"></asp:Button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <!-- Edit Appel Offre -->
                    <% Server.Transfer("updateContract.aspx");%>
                </div>
            </div>
        </div>
    </div>
</body>
</html>





