<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Type.aspx.cs" Inherits="ApplicationCharbon.UI.Type" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <title>Type</title>
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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />

    <link rel="stylesheet" href="../../Assets/CSS/Style.css" />
    <link rel="stylesheet" href="../../Assets/CSS/StyleSheet.css" />
    <link rel="stylesheet" href="../../Assets/CSS/index.css" />
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
                        <a href="index.aspx" class="list-group-item list-group-item-action ">
                            <i class="bi bi-speedometer2 me-2"></i>Tableau de bord
                        </a>

                        <a href="../Paramètre.aspx" id="Paramètre" class="list-group-item list-group-item-action active" aria-current="true">
                            <i class="bi bi-sliders"></i>Paramètre
                        </a>
                        <ul class="submenu">
                            <li><a href="#">Station</a></li>
                            <li><a href="#">Origine</a></li>
                            <li><a href="#">Fournisseur</a></li>
                            <li><a href="#">Bateaux</a></li>
                          <li><a href="#">Type</a></li><li><a href="#">Stock</a></li><li><a href="#">Centrale Stock</a></li>
                        </ul>


                        <a href="../PlanningPrevisionnel/PlanningPrevisionnel.aspx" id="Planning_Previsionnel" class="list-group-item list-group-item-action " aria-current="true">
                            <i class="bi bi-calendar-event"></i>Planning Previsionnel
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
                <h2 class="title">Paramètrage</h2>
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../Paramètre.aspx">Paramètrage</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Type</li>
                    </ol>
                    <button type="button" class="btn btn-success btn-lg shadow" data-bs-toggle="modal" data-bs-target="#ajouterTypeModal" style="position: absolute; top: 200px; right: 20px;">
                        <i class="bi bi-plus-lg"></i>
                        <span class="d-none d-md-inline-block">Ajouter un Type</span>
                    </button>

                </nav>





                <div class="container">
                    <%@ Import Namespace="ApplicationCharbon.Services" %>
                    <% var service = new CharbonAccessService();%>
                    <% var va = service.GetMyDataType();
                        foreach (var tp in va)
                        { %>
                    <div class="cardss">
                        <div class="box">
                            <div class="content">
                                <a type="button" class="btn-close delete-type" href="#" data-typeid="<%= tp.id_type %>" data-typename="<%= tp.type %>" data-dismiss="modal" aria-label="Close">
                                    <span class="delete-type" href="#" data-typeid="<%= tp.id_type %>" data-typename="<%= tp.type %>"></span>
                                </a>
                                <a type="button" class=" edit-type" href="#" data-typeid="<%= tp.id_type %>" data-typename="<%= tp.type %>">
                                    <i class="btn-edit bi bi-pen me-2"></i>
                                    <span class="edit-type" href="#" data-typeid="<%= tp.id_type %>" data-typename="<%= tp.type %>"></span>
                                </a>
                                <h2>ID : 0<%= tp.id_type %></h2>
                                <h3>Type : </h3>
                                <p><%= tp.type.ToUpper() %></p>
                            </div>
                        </div>
                    </div>
                    <% } %>
                </div>

                <!-- Add Modal HTML -->
                <div class="modal fade" id="ajouterTypeModal" tabindex="-1" aria-labelledby="ajouterTypeModalLabel" aria-hidden="true">
                    <div class="modal-dialog small-modal">
                        <div class="modal-content">
                            <form runat="server">
                                <div class="modal-header">
                                    <h2 class="modal-title" id="ajouterTypeModalLabel">Ajouter Type</h2>
                                    <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
                                </div>

                                <div class="modal-body">
                                    <div class="form-group">
                                        <label for="nomtype" class="form-label">Type </label>
                                        <asp:TextBox ID="nomtype" runat="server" CssClass="form-control" required="required"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <asp:Button type="submit" Text="Ajouter le type" class="btn btn-success" OnClick="AddButton_Type_Click" runat="server"></asp:Button>
                                    <asp:Button runat="server" Text="Annuler" CssClass="btn btn-secondary" data-dismiss="modal" />
                                </div>

                            </form>
                        </div>
                    </div>
                </div>
                <!-- Edit Station -->
                <% Server.Transfer("updateType.aspx");%>
            </div>
        </div>
    </div>
</body>
</html>

