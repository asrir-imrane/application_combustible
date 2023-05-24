<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="updatePlanningPrevisionnel.aspx.cs" Inherits="ApplicationCharbon.UI.updatePlanningPrevisionnel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Modifier Station</title>
    <script src="../../Assets/Scripts/script.js"></script>
</head>
<body>

    <div id="modifierPV" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <form id="Form1" runat="server" method="post" enctype="multipart/form-data">

                    <div class="modal-header">
                        <h2 class="modal-title" id="ajouterPVModalLabel">Modifier PV</h2>
                        <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
                    </div>

                    <div class="modal-body">
                        <div class="form-group">
                            <label>Id Planning</label>
                            <input type="text" class="form-control" id="id_planning" runat="server" readonly="readonly" required="required" />
                        </div>
                        <div class="form-group">
                            <label>Nom Station</label>
                            <asp:DropDownList ID="nomstationListe" runat="server" class="form-select"></asp:DropDownList>
                        </div>
                        <div class="form-group">
                            <label>Année</label>
                            <select class="form-control" id="year" runat="server" required="required">
                                <option value="">Sélectionnez une année</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Importer un fichier Excel</label>
                            <input runat="server" type="file" name="oFile" id="oFile" />
                        </div>
                    </div>
                    <div class="modal-footer">
                        <asp:Button type="submit" Text="Modifier " class="btn btn-success" OnClick="EditButton_PV_Click" runat="server"></asp:Button>
                        <asp:Button runat="server" Text="Annuler" CssClass="btn btn-secondary" data-dismiss="modal" />
                    </div>
                </form>
            </div>
        </div>
    </div>



    <!-- Supprimer PV -->
    <% Server.Transfer("deletePlanningPrevisionnel.aspx");%>
</body>
</html>

