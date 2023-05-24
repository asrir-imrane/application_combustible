<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bateaux.aspx.cs" Inherits="ApplicationCharbon.UI.Bateaux.Bateaux" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <title>Bateau</title>
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
    <link rel="stylesheet" href="../../Assets/CSS/BoatPage.css" />
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
                        <li class="breadcrumb-item active" aria-current="page">Bateau</li>
                    </ol>
                    <button type="button" class="btn btn-success btn-lg shadow" data-bs-toggle="modal" data-bs-target="#ajouterBateau" style="position: absolute; top: 200px; right: 20px;">
                        <i class="bi bi-plus-lg"></i>
                        <span class="d-none d-md-inline-block">Ajouter un Bateau</span>
                    </button>

                </nav>


                <div class="container_bateaux">
                    <%@ Import Namespace="ApplicationCharbon.Services" %>
                    <% var service = new CharbonAccessService();%>

                    <% var va = service.GetMyDataBateau();
                        foreach (var tp in va)
                        { %>
                    <article class="card">
                        <div class="temporary_text">
                            <img class="" src="../../Assets/IMG/boat2-01.jpg" alt="" />


                            <span class="card_id"><span>#</span><%= tp.id_bateau %></span>
                        </div>
                        <div class="cardB_content">
                            <span class="cardB_title"><%= tp.nom_bateau %></span>
                            <div class="cardB_description">
                                <div class="button-box">
                                    <a type="button" class="btn-close delete-bateau" href="#" data-bateauid="<%= tp.id_bateau %>" style="color: black;" data-dismiss="modal" aria-label="Close">
                                        <span class="delete-station" href="#"></span>
                                    </a>
                                    <a type="button" class="edit-bateau" href="#" data-bateauid="<%= tp.id_bateau %>" style="color: black;" data-dismiss="modal">
                                        <i class="btn-edit bi bi-pen me-2"></i>
                                        <span class="edit-bateau" href="#"></span>
                                    </a>
                                </div>

                                <ul>
                                    <li><b>Tonnage:</b><%= tp.tonnage %></li>
                                    <li><b>Valeur Calorifique:</b><%= tp.valeur_calorifique %></li>
                                    <li><b>Origine:</b><%= tp.nom_origine %></li>
                                    <li><b>Coût:</b><%= tp.cout %></li>
                                    <li><b>Frais Douane:</b><%= tp.frais_douane %></li>
                                    <li><b>Decharge:</b><%= tp.decharge %></li>
                                    <li><b>Prix Rendu:</b><%= tp.prix_rendu %></li>
                                    <li><b>Assurance:</b><%= tp.assurance %></li>
                                    <li><b>Etat Bateau:</b><%= tp.etat %></li>
                                </ul>
                            </div>
                        </div>
                    </article>
                    <% } %>
                </div>

            </div>





            <!-- Ajouter bateau  -->
            <form runat="server">
                <div id="ajouterBateau" class="modal fade" runat="server">
                    <div class="vtn-circle">

                        <button type="button" class="vtn btn-close" data-dismiss="modal" aria-label="Close"></button>

                    </div>

                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="bt-title">
                                <h4 class="modal-title ">Ajouter Bateau</h4>
                            </div>
                            <div class="modal-body">
                                <div class="form-group ">
                                    <label>Id Contrat</label>
                                    <asp:DropDownList ID="nomcontratListe" runat="server" class="form-select"></asp:DropDownList>
                                </div>

                                <div class="form-group">
                                    <label>Nom Bateau</label>
                                    <input type="text" class="form-control" id="nom_bateau" runat="server" required="required" />
                                </div>
                                <div class="form-group">
                                    <label>Tonnage</label>
                                    <input type="number" class="form-control" id="tonnage" runat="server" required="required" pattern="\d+(\.\d+)?" title="Entrer le tonnage " />
                                </div>


                                <div class="form-group">
                                    <label>Nom Origine</label>
                                    <asp:DropDownList ID="nomorigineListe" runat="server" class="form-select"></asp:DropDownList>
                                </div>

                                <div class="form-group">
                                    <label>Valeur Calorifique</label>
                                    <input type="number" class="form-control" id="valeur_calorifique" runat="server" required="required" />
                                </div>
                                <div class="form-group">
                                    <label>Coût</label>
                                    <input type="number" class="form-control" id="cout" runat="server" required="required" />
                                </div>
                                <div class="form-group">
                                    <label>Frais Douane</label>
                                    <input type="number" class="form-control" id="frais_douane" runat="server" required="required" />
                                </div>
                                <div class="form-group">
                                    <label>Decharge</label>
                                    <input type="number" class="form-control" id="decharge" runat="server" required="required" />
                                </div>
                                <div class="form-group">
                                    <label>Prix Rendu</label>
                                    <input type="number" class="form-control" id="prix_rendu" runat="server" required="required" />
                                </div>
                                <div class="form-group">
                                    <label>Frais Assurance</label>
                                    <input type="number" class="form-control" id="assurance" runat="server" required="required" />
                                </div>
                                <div class="form-group">
                                    <label>Etat Bateau</label>
                                    <input type="text" class="form-control" id="etatBateau" runat="server" required="required" />
                                </div>
                            </div>

                            <div class="modal-footer">
                                <asp:Button type="submit" Text="Ajouter" class="btn btn-success" OnClick="AddButton_Bateau_Click" runat="server"></asp:Button>
                                <asp:Button runat="server" Text="Annuler" CssClass="btn btn-secondary" data-dismiss="modal" />

                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <!-- Edit Bateau -->
    <% Server.Transfer("updateBateaux.aspx");%>
</body>
</html>
