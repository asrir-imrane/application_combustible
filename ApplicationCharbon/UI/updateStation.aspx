<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="updateStation.aspx.cs" Inherits="ApplicationCharbon.UI.Station.updateStation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Modifier Station</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="../Assets/CSS/Style.css" />
    <link rel="stylesheet" href="../Assets/CSS/index.css" />
    <link rel="stylesheet" href="../Assets/CSS/StyleSheet.css" />
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="../Assets/Scripts/nav.js"></script>
    <script src="../Assets/Scripts/script.js"></script>

</head>
<body>

    <div id="modifierStation" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <form id="editStationForm" runat="server">

                    <div class="modal-header">
                        <h2 class="modal-title" id="ajouterStationModalLabel">Modifier Station</h2>
                        <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
                    </div>

                    <div class="modal-body">
                        <div class="form-group">
                            <label for="id_station" class="form-label">ID du Station </label>
                            <input type="text" class="form-control" id="id_station" name="id_station" readonly="readonly" value="" />
                        </div>
                        <div class="form-group">
                            <label for="nomstation" class="form-label">Nom du Station </label>
                            <asp:TextBox ID="nomstation" runat="server" CssClass="form-control" required="required"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="adresse" class="form-label">Adresse </label>
                            <asp:TextBox ID="Adress" runat="server" CssClass="form-control" required="required"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="telephone" class="form-label">Telephone </label>
                            <asp:TextBox ID="phone" runat="server" CssClass="form-control" required="required"></asp:TextBox>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <asp:Button type="submit" Text="Modifier Station" class="btn btn-success" OnClick="EditButton_Station_Click" runat="server"></asp:Button>
                        <asp:Button runat="server" Text="Annuler" CssClass="btn btn-secondary" data-dismiss="modal" />
                    </div>
                </form>
            </div>
        </div>
    </div>


    <!-- Supprimer Station -->
    <% Server.Transfer("deleteStation.aspx");%>
</body>
</html>



