<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="updateType.aspx.cs" Inherits="ApplicationCharbon.UI.updateType" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Modifier Type</title>
    <script src="../../Assets/Scripts/script.js"></script>
</head>
<body>
    <div id="modifierType" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <form runat="server">
                    <div class="modal-header">
                        <h4 class="modal-title">Modifier Type</h4>
                        <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <label for="id_type" class="form-label">ID du Type </label>

                            <input type="text" class="form-control" id="id_type" name="id_type" readonly="readonly" value="" />

                        </div>

                        <div class="form-group">
                            <label>Type</label>
                            <input type="text" class="form-control" id="typeEdit" runat="server" required="required" />
                        </div>
                    </div>
                    <div class="modal-footer">
                        <asp:Button type="submit" Text="Modifier Station" class="btn btn-success" OnClick="EditButton_Type_Click" runat="server"></asp:Button>
                        <asp:Button runat="server" Text="Annuler" CssClass="btn btn-secondary" data-dismiss="modal" />
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!-- Supprimer Type -->
    <% Server.Transfer("deleteType.aspx");%>
</body>
</html>
