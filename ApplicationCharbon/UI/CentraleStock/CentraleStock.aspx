<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CentraleStock.aspx.cs" Inherits="ApplicationCharbon.UI.CentraleStock" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <title>Central Stock</title>
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
    <!-- Add Bootstrap JavaScript and jQuery -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="../../Assets/Scripts/nav.js"></script>
    <script src="../../Assets/Scripts/script.js"></script>

    <style>
        .card {
            position: relative;
            width: 350px;
            height: 450px;
            color: #2e2d31;
            overflow: hidden;
            border-radius: 20px;
            margin: 20px;
            box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
        }

        .card_id {
            position: absolute;
            top: 8px;
            left: 8px;
            display: flex;
            justify-content: center;
            align-items: center;
            width: 45px;
            height: 45px;
            border-radius: 0.25rem;
            background-color: #23343b;
            color: white;
            font-size: 18px;
            font-weight: 700;
        }

        .temporary_text {
            display: flex;
            justify-content: center;
            align-items: center;
        }

            .temporary_text img {
                width: 100%;
                height: 100%;
            }




        .cardB_title {
            margin-top: 20px;
            display: block;
            text-align: center;
            font-weight: bold;
            font-size: 30px;
            margin-bottom: 75px;
        }

        .cardB_content .cardB_description .btn-close {
            position: absolute;
            top: 10px;
            right: 10px;
            height: 20px;
            width: 20px;
            background-color: white;
            color: black;
            font-size: 12px;
            padding: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease-in-out, color 0.3s ease-in-out;
        }

        .cardB_content {
            position: absolute;
            left: 0;
            bottom: 0;
            width: 100%;
            padding: 20px;
            background: #f2f2f2;
            border-top-left-radius: 20px;
            transform: translateY(165px);
            transition: transform .25s;
        }

            .cardB_content::before {
                content: '';
                position: absolute;
                top: -47px;
                right: -45px;
                width: 100px;
                height: 100px;
                transform: rotate(-175deg);
                border-radius: 50%;
                box-shadow: inset 48px 48px #f2f2f2;
            }

        .cardB_title {
            color: #131313;
            line-height: 15px;
        }

        .cardB_description {
            font-size: 20px;
            opacity: 0;
            transition: opacity .5s;
        }

        .card:hover .cardB_content {
            transform: translateY(0);
        }

        .card:hover .cardB_description {
            opacity: 1;
            transition-delay: .25s;
        }
    </style>


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
                            <li><a href="#">Type</a></li>
                            <li><a href="#">Stock</a></li>
                            <li><a href="#">Centrale Stock</a></li>
                            <li><a href="#">Stock</a></li>
                            <li><a href="#">Centrale Stock</a></li>
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
                        <li class="breadcrumb-item active" aria-current="page">Central Stock</li>
                    </ol>
                </nav>


                <div class="container_bateaux">
                    <%@ Import Namespace="ApplicationCharbon.Services" %>
                    <% var service = new CharbonAccessService();%>

                    <% var va = service.GetMyDataCS();
                        foreach (var tp in va)
                        { %>
                    <article class="card">
                        <div class="temporary_text">
                            <img class="" src="../../Assets/IMG/stock1.jpg" alt="" />
                        </div>
                        <div class="cardB_content">
                            <span class="cardB_title">Id Central Stock: <%= tp.Id_SCentrale%></span>
                            <div class="cardS_description">
                                <div class="button-box">
                                    <a type="button" class="btn-close delete-CS" href="#" data-idscentrale="<%= tp.Id_SCentrale %>" style="color: black;" data-dismiss="modal" aria-label="Close">
                                        <span class="delete-station" href="#"></span>
                                    </a>
                                    <a type="button" class="edit-CS" href="#" data-idscentrale="<%= tp.Id_SCentrale %>" data-stockinitial="<%= tp.stock_initial %>" data-stockfinal="<%= tp.stock_final %>" data-stockajustement="<%= tp.stock_ajustement %>" data-stockdate="<%= tp.stock_date %>" style="color: black;" data-dismiss="modal">
                                        <i class="btn-edit bi bi-pen me-2"></i>
                                        <span class="edit-bateau" href="#"></span>
                                    </a>
                                </div>
                                <ul>
                                    <li><b>Date :</b> <%= tp.stock_date.ToString("yyyy-MM-dd") %></li>
                                    <li><b>Stock initial :</b> <%= tp.stock_initial %></li>
                                    <li><b>Stock final :</b> <%= tp.stock_final %></li>
                                    <li><b>Différence de stock :</b> <%= tp.stock_difference %></li>
                                    <li><b>Ajustement des stocks :</b> <%= tp.stock_ajustement %></li>
                                </ul>
                            </div>
                        </div>
                    </article>
                    <% } %>
                </div>

            </div>




        </div>
    </div>
    <!-- Edit Fournisseur -->
    <% Server.Transfer("updateCentraleStock.aspx");%>
</body>
</html>





