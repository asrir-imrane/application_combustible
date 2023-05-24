﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="ApplicationCharbon.UI.index" %>

<%@ Import Namespace="ApplicationCharbon.Services" %>
<%@ Import Namespace="Newtonsoft.Json" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <title>Tableau de bord</title>
    <!-- Fontawesome CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link href="https://fonts.googleapis.com/css?family=Dosis" rel="stylesheet" />

    <!-- Bootstrap 5 CSS -->
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.css" />

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.2/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous" />
    <!-- Bootstrap Icons CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css" integrity="sha384-dtV5C5+mfIjJ8OvH0d7bzDJwIphlOaEJj/vxHgyV1pG9tX5Wj8oL5d5I7YoDQyCY" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css" />
    <link rel="stylesheet" href="../Assets/CSS/StyleSheet.css" />
    <link rel="stylesheet" href="../Assets/CSS/Style.css" />
    <link rel="stylesheet" href="../Assets/CSS/index.css" />
    <link rel="stylesheet" href="../Assets/CSS/IndexPage.css" />
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet" />
    <!-- Add Bootstrap JavaScript and jQuery -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="../Assets/Scripts/script.js"></script>
    <script src="../Assets/Scripts/nav.js"></script>
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
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <style>
        .card {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            transition: box-shadow 0.3s ease-in-out;
        }

            .card:hover {
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            }

        .card-body {
            padding: 20px;
        }

        .h6 {
            color: #6c757d;
            font-size: 25px;
            font-weight: 600;
        }

        .h3 {
            color: #343a40;
            font-size: 34px;
            font-weight: bold;
        }

        .icon {
            background-color: #3c5a65;
            color: #fff;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 60px;
            width: 60px;
            border-radius: 50%;
        }

        .bi-file-earmark-text {
            font-size: 24px;
        }

        .card-header:first-child {
            border-radius: 10px;
        }

        .card-header {
            width: 550px;
            height: 450px;
            margin-top: 40px;
            background-color: #fff;
            box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;
            border-radius: 10px;
        }


        .second {
            width: 950px;
            height: 450px;
            background-color: #fff;
            margin-top: 40px;
        }

        .statistics {
            margin-right: 70px;
        }


        .dashboard_title {
            font-size: 30px;
            font-weight: bold;
            margin-bottom: 40px;
            margin-top: 110px;
        }

            .dashboard_title::before {
                content: "";
                position: absolute;
                bottom: -0.5rem;
                left: 50%;
                transform: translateX(-50%);
                width: 100%;
                height: 1px;
                background-color: #ccc;
            }


        .card-header-title {
            color: #6c757d;
            font-size: 25px;
            font-weight: bold;
            margin-bottom: 10px;
        }

        .header-icon {
            margin-right: 10px;
        }

        .status_report_box {
            height: 350px;
            background-color: #fff;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
            margin: 20px auto;
            border-radius: 10px;
        }

        canvas#appelOffreChart {
            width: 100%;
            height: 100%;
        }




        .card-body {
            height: 150px;
            border-radius: 5px;
        }

        #appelOffreChart {
            width: 100%;
            height: 100%;
        }


        .status_report_box canvas {
            display: block;
            margin: 20px auto;
            width: 100%;
            height: 100%;
        }

        .status_report_box {
            position: relative;
        }

        .form {
            position: absolute;
            top: 5px;
            left: 5px;
            bottom: 5px;
            z-index: 1;
        }

        .dropdown-list {
            width: 100px;
            height: 30px;
            padding: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #fff;
            font-size: 14px;
            color: #333;
        }

        .button {
            position: absolute;
            top: 5px;
            left: 110px;
            width: 30px;
            height: 30px;
            z-index: 1;
            border: none;
            border-radius: 5px;
            background-color: #4CAF50;
            color: #fff;
            font-size: 14px;
            cursor: pointer;
            align-content: center;
            justify-content: center;
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
                        <a href="index.aspx" class="list-group-item list-group-item-action active">
                            <i class="bi bi-speedometer2 me-2"></i>Tableau de bord
                        </a>
                        <a href="Paramètre.aspx" id="Paramètre" class="list-group-item list-group-item-action " aria-current="true">
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



            <div class="col-md-9 col-lg-10 py-5">
                <div class="dashboard_title" data-aos="fade-right">Tableau de bord</div>

                <div class="main-container" id="wrapper">


                    <div class="container-fluid">

                        <div class="row">
                            <%@ Import Namespace="ApplicationCharbon.Services" %>
                            <% var service = new CharbonAccessService();%>
                            <% var station = service.GetNumberStation(); %>
                            <% var AO = service.GetNumberAO(); %>
                            <% var contrat = service.GetNumberContrat(); %>

                            <!-- card1 -->
                            <div class="col-md-4" data-aos="fade-right">
                                <div class="card shadow border-0">
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col">
                                                <span class="h6 font-semibold text-muted text-sm d-block mb-2">Stations</span>
                                                <span class="h3 font-bold mb-0"><%= station %></span>
                                            </div>
                                            <div class="col-auto">
                                                <div class="icon icon-shape  text-white text-lg rounded-circle">
                                                    <i class="bi bi-lightning-charge"></i>
                                                </div>
                                            </div>
                                        </div>


                                    </div>
                                </div>
                            </div>
                            <!-- card2 -->
                            <div class="col-md-4" data-aos="fade-up">
                                <div class="card shadow border-0">
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col">
                                                <span class="h6 font-semibold text-muted text-sm d-block mb-2">Appels d'Offres</span>
                                                <span class="h3 font-bold mb-0"><%= AO %></span>
                                            </div>
                                            <div class="col-auto">
                                                <div class="icon icon-shape text-white text-lg rounded-circle">
                                                    <i class="bi bi-megaphone"></i>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <!-- card3 -->
                            <div class="col-md-4" data-aos="fade-left">
                                <div class="card shadow border-0">
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col">
                                                <span class="h6 font-semibold text-muted text-sm d-block mb-2">Contrats</span>
                                                <span class="h3 font-bold mb-0"><%= contrat %></span>
                                            </div>
                                            <div class="col-auto">
                                                <div class="icon icon-shape  text-white text-lg rounded-circle">
                                                    <i class="bi bi-file-earmark-text"></i>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Total -->

                        <table id="status-table" class="table table-hover table-nowrap" style="display: none;">
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
                                <% var services = new CharbonAccessService();%>
                                <% var va = services.GetMyDataAppelOffre();
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


                        <div class="row">
                            <div class="col-md-4 statistics " data-aos="fade-right">
                                <div class="card-header">
                                    <div class="row">
                                        <div class="card-header-title">
                                            <i class="header-icon lnr-apartment icon-gradient bg-love-kiss"></i>
                                            Appel d'offre
                                        </div>
                                        <div class="status_report_box Regular shadow">
                                            <canvas id="appelOffreChart" style="width: 100%; height: 100%;"></canvas>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4" data-aos="fade-left">
                                <div class="card-header  second">
                                    <div class="row ">
                                        <div class="card-header-title">
                                            <i class="header-icon lnr-apartment icon-gradient bg-love-kiss"></i>
                                            Statistiques de contrats
                                        </div>
                                        <div class="status_report_box Regular shadow">
                                            <form runat="server">
                                                <div class="form">
                                                    <asp:DropDownList ID="nomstationListe" runat="server" class="form dropdown-list"></asp:DropDownList>
                                                    <input type="hidden" id="selectedStation" runat="server" />
                                                    <asp:Button type="submit" Text="OK" class="button" OnClick="Choose_Station" runat="server"></asp:Button>

                                                </div>
                                            </form>
                                            <canvas id="chart" style="width: 100%; height: 100%;"></canvas>
                                            <%
                                                var servicess = new CharbonAccessService();
                                                var data = service.GetMyDataContrat();
                                                var contractCounts = data
                                                    .GroupBy(tp => tp.date_creation.Month)
                                                    .Select(group => new { Month = group.Key, Count = group.Count() })
                                                    .OrderBy(entry => entry.Month)
                                                    .ToList();

                                            %>

                                            <script>
                                                var contractCounts = <%= Newtonsoft.Json.JsonConvert.SerializeObject(contractCounts) %>;
                                                var months = contractCounts.map(entry => entry.Month);
                                                var counts = contractCounts.map(entry => entry.Count);


                                                var ctx = document.getElementById('chart').getContext('2d');
                                                var chart = new Chart(ctx, {
                                                    type: 'bar',
                                                    data: {
                                                        labels: months,
                                                        datasets: [{
                                                            label: 'Contract Count',
                                                            data: counts,
                                                            backgroundColor: 'rgba(54, 162, 235, 0.5)',
                                                            borderColor: 'rgba(54, 162, 235, 1)',
                                                            borderWidth: 1,
                                                            tension: 1
                                                        }]
                                                    },
                                                    options: {
                                                        scales: {
                                                            y: {
                                                                beginAtZero: true,
                                                                precision: 0
                                                            }
                                                        }
                                                    }
                                                });
                                            </script>


                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>


                    </div>
                </div>

                <%--      <script>
    <%
                    int selectedStationValue;
                    string contratData = "";

                    if (int.TryParse(selectedStation.Value, out selectedStationValue))
                    {
                        var Service = new CharbonAccessService();
                        var Station = Service.GetNumberContratByMonth(selectedStationValue);

                        var currentMonth = DateTime.Now.Month - 1; // Get the current month index (0-11)
                        var chartData = new int[12];

                        foreach (var entry in Station)
                        {
                            var monthIndex = (entry.Key - 1 + currentMonth) % 12; // Calculate the corresponding month index
                            chartData[monthIndex] = entry.Value;
                        }

                        contratData = JsonConvert.SerializeObject(chartData);
                    }
                    else
                    {
                        selectedStationValue = int.Parse(nomstationListe.Items[0].Value);
                        var Service = new CharbonAccessService();
                        var Station = Service.GetNumberContratByMonth(selectedStationValue);

                        var currentMonth = DateTime.Now.Month - 1;
                        var chartData = new int[12];

                        foreach (var entry in Station)
                        {
                            var monthIndex = (entry.Key - 1 + currentMonth) % 12;
                            chartData[monthIndex] = entry.Value;
                        }

                        contratData = JsonConvert.SerializeObject(chartData);
                    }
    %>

                    var ctx = document.getElementById('chart').getContext('2d');
                    var initialData = JSON.parse('<%= contratData %>');

                    var chartData = initialData || [];

                    var chart = new Chart(ctx, {
                        type: 'line',
                        data: {
                            labels: getMonthLabels(),
                            datasets: [{
                                label: "Nombre de contrats",
                                data: chartData,
                                backgroundColor: 'rgba(75, 192, 192, 0.2)',
                                borderColor: 'rgba(75, 192, 192, 1)',
                                borderWidth: 1,
                                fill: true,
                                tension: 0.4
                            }]
                        },
                        options: {
                            scales: {
                                y: {
                                    beginAtZero: true
                                }
                            }
                        }
                    });

                    function getMonthLabels() {
                        var currentMonth = new Date().getMonth();
                        var monthLabels = ["Janvier", "Février", "Mars", "Avril", "Mai", "Juin", "Juillet", "Août", "Septembre", "Octobre", "Novembre", "Décembre"];
                        var adjustedLabels = [];

                        for (var i = 0; i < 12; i++) {
                            var monthIndex = (currentMonth + i) % 12;
                            adjustedLabels.push(monthLabels[monthIndex]);
                        }

                        return adjustedLabels;
                    }
</script>--%>



                <script>
                    // Define the function to generate the chart
                    function generateChart() {
                        // Get the table rows containing the data
                        const tableRows = document.querySelectorAll('.table tbody tr');

                        // Initialize data objects for each status
                        const rejectedData = { count: 0, shape: 'circle', color: 'red' };
                        const pendingData = { count: 0, shape: 'circle', color: 'orange' };
                        const activatedData = { count: 0, shape: 'circle', color: 'green' };

                        // Loop through table rows and extract data for each month
                        tableRows.forEach(function (row) {
                            const dateEmission = new Date(row.cells[5].innerText);
                            const month = dateEmission.getMonth();
                            const status = row.classList.contains('rejetee')
                                ? 'rejected'
                                : row.classList.contains('en_attente')
                                    ? 'pending'
                                    : 'activated';

                            // Increment the corresponding status count for the month
                            switch (status) {
                                case 'rejected':
                                    rejectedData.count++;
                                    break;
                                case 'pending':
                                    pendingData.count++;
                                    break;
                                case 'activated':
                                    activatedData.count++;
                                    break;
                            }
                        });

                        // Prepare the chart data
                        const chartData = {
                            labels: ['Rejetées', 'En attente', 'Activées'],
                            datasets: [
                                {
                                    backgroundColor: [rejectedData.color, pendingData.color, activatedData.color],
                                    data: [rejectedData.count, pendingData.count, activatedData.count]
                                }
                            ]
                        };

                        // Create the chart
                        const ctx = document.getElementById('appelOffreChart').getContext('2d');
                        new Chart(ctx, {
                            type: 'pie',
                            data: chartData,
                            options: {
                                responsive: true
                            }
                        });
                    }

                    // Call the function when the DOM content is loaded
                    document.addEventListener('DOMContentLoaded', generateChart);
                </script>
                <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

            </div>

        </div>
    </div>
</body>
</html>
