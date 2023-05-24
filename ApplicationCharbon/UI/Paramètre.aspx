<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Paramètre.aspx.cs" Inherits="ApplicationCharbon.UI.Paramètre" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <title>Paramètre</title>
    <!-- Fontawesome CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />

    <!-- Bootstrap 5 CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous" />
    <!-- Bootstrap Icons CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css" integrity="sha384-dtV5C5+mfIjJ8OvH0d7bzDJwIphlOaEJj/vxHgyV1pG9tX5Wj8oL5d5I7YoDQyCY" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css" />
    <link rel="stylesheet" href="../../Assets/CSS/StyleSheet.css" />
    <link rel="stylesheet" href="../../Assets/CSS/Style.css" />
    <link rel="stylesheet" href="../../Assets/CSS/index.css" />
    <link rel="stylesheet" href="../Assets/CSS/parametre.css" />
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet" />
    <!-- Add Bootstrap JavaScript and jQuery -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="../../Assets/Scripts/script.js"></script>
    <script src="../../Assets/Scripts/nav.js"></script>
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <scriptr>
        <script>
            AOS.init();
            window.onscroll = () => {
                toggleTopButton();
            }
            function scrollToTop() {
                window.scrollTo({ top: 0, behavior: 'smooth' });
            }

            function toggleTopButton() {
                if (document.body.scrollTop > 20 ||
                    document.documentElement.scrollTop > 20) {
                    document.getElementById('back-to-up').classList.remove('d-none');
                } else {
                    document.getElementById('back-to-up').classList.add('d-none');
                }
            }
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
                    <img src="../Assets/IMG/logo.png" alt="ONE" class="logo" />
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

                        <a href="Paramètre.aspx" id="Paramètre" class="list-group-item list-group-item-action active" aria-current="true">
                            <i class="bi bi-sliders"></i>Paramètre
                        </a>
                        <ul class="submenu">
                            <li><a href="#">Station</a></li>
                            <li><a href="#">Origine</a></li>
                            <li><a href="#">Fournisseur</a></li>
                            <li><a href="#">Bateaux</a></li>
                          <li><a href="#">Type</a></li><li><a href="#">Stock</a></li><li><a href="#">Centrale Stock</a></li>
                        </ul>


                        <a href="PlanningPrevisionnel/PlanningPrevisionnel.aspx" id="Planning_Previsionnel" class="list-group-item list-group-item-action " aria-current="true">
                            <i class="bi bi-calendar-event"></i>Planning Previsionnel
                        </a>
                        <a href="AppelOffre/AppelOffre.aspx" id="Appel_Offre" class="list-group-item list-group-item-action " aria-current="true">
                            <i class="bi bi-list-columns"></i>Appel Offre
                        </a>
                        <a href="Contrat/Contract.aspx" id="Contrat" class="list-group-item list-group-item-action" aria-current="true">
                            <i class="bi bi-file-earmark-post"></i>Contrat
                        </a>
                    </div>
                </div>
            </div>


            <!-- Main content -->

            <div class="col-md-9 col-lg-10 py-5">
                <div class="section-title" data-aos="fade-up">
                    <h2>Paramètre</h2>
                    <p class="section">
                        Un ensemble de services offerts pour la gestion de contrats relatifs aux stations, origines, fournisseurs, bateaux et types.
                    </p>
                </div>
                <section id="more-services" class="more-services">
                    <div class="container">
                        <div class="row d-flex justify-content-center align-items-center">
                            <div class="col-md-6 d-flex align-items-stretch">
                                <div class="card" style='background-image: url("../Assets/IMG/central.png");' data-aos="fade-up" data-aos-delay="50">
                                    <div class="card-body" onclick="window.location.href='Station.aspx'">
                                        <h5 class="card-title">Station</h5>
                                        <p class="card-text">
                                            Avec la section « Station », vous pouvez gérer les stations de charbon existantes en ajoutant, supprimant et modifiant leurs informations. Elle fournit également des détails sur les stations.
   
                                        </p>
                                    </div>

                                </div>
                            </div>
                            <div class="col-md-6 d-flex align-items-stretch mt-4 mt-md-0">
                                <div class="card" style='background-image: url("../Assets/IMG/Map-01-01.png");' data-aos="fade-up" data-aos-delay="100">
                                    <div class="card-body" onclick="window.location.href='Origine/Origin.aspx'">
                                        <h5 class="card-title">Origine</h5>
                                        <p class="card-text">
                                            Avec la section « Origine », vous pouvez gérer les origines. Elle permet d'ajouter, de supprimer et de modifier des informations sur les origines existantes.
                                        </p>
                                    </div>
                                </div>

                            </div>

                            <div class="col-md-6 d-flex align-items-stretch mt-4 mt-md-0">
                                <div class="card" style='background-image: url("../Assets/IMG/Fournisseur.png");' data-aos="fade-up" data-aos-delay="100">
                                    <div class="card-body" onclick="window.location.href='Fournisseur/Fourni.aspx'">
                                        <h5 class="card-title">Fournisseur</h5>
                                        <p class="card-text">
                                            Avec la section « Fournisseur », vous pouvez gérer une liste de fournisseurs et permet de les ajouter, de les modifier et de les supprimer.
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 d-flex align-items-stretch mt-4 mt-md-0">
                                <div class="card" style='background-image: url("../Assets/IMG/boat.png"); background-size: cover;' data-aos="fade-up" data-aos-delay="100">
                                    <div class="card-body" onclick="window.location.href='Bateaux/Bateaux.aspx'">
                                        <h5 class="card-title">Bateaux</h5>
                                        <p class="card-text">
                                            Cette section « Bateaux », vous affiche une liste de bateaux avec leurs détails et offre la possibilité de les ajouter, les supprimer ou de les modifier.
                                        </p>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6 d-flex align-items-stretch mt-4 mt-md-0">
                                <div class="card" style='background-image: url("../Assets/IMG/Combustible.png");' data-aos="fade-up" data-aos-delay="100">
                                    <div class="card-body" onclick="window.location.href='Type/Type.aspx'">
                                        <h5 class="card-title">Type</h5>
                                        <p class="card-text">
                                            Avec la section « Type », vous pouvez gérer une liste de type et permet de les ajouter, de les modifier et de les supprimer.
                                        </p>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6 d-flex align-items-stretch mt-4 mt-md-0">
                                <div class="card" style='background-image: url("../Assets/IMG/stock.png");' data-aos="fade-up" data-aos-delay="100">
                                    <div class="card-body" onclick="window.location.href='Stock/stck.aspx'">
                                        <h5 class="card-title">Stock</h5>
                                        <p class="card-text">
                                            Avec la section « Stock », vous pouvez gérer le stock de charbon en affichant des données actuelles et en permettant à l'utilisateur d'ajouter, modifier ou supprimer.
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 d-flex align-items-stretch mt-4 mt-md-0">
                                <div class="card" style='background-image: url("../Assets/IMG/stock.png");' data-aos="fade-up" data-aos-delay="100">
                                    <div class="card-body" onclick="window.location.href='CentraleStock/CentraleStock.aspx'">
                                        <h5 class="card-title">Central Stock</h5>
                                        <p class="card-text">
                                            Avec la section « Central Stock », vous pouvez gérer le stock de charbon en affichant des données actuelles et en permettant à l'utilisateur de modifier ou supprimer.
                                        </p>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </section>
            </div>


        </div>
        <button class="back-to-top" onclick="scrollToTop()" id="back-to-up">
            <i class="fa fa-arrow-up" aria-hidden="true"></i>
        </button>
    </div>
</body>
</html>
