<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="updateOrigine.aspx.cs" Inherits="ApplicationCharbon.UI.updateOrigine" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Modifier Origine</title>
</head>
<body>
    <div id="modifierOrigine" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <form runat="server">
                    <div class="modal-header">
                        <h4 class="modal-title">Modifier Origine</h4>
                        <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <input type="text" class="form-control" id="id_origineED" runat="server" required="required" style="display: none;" />
                        </div>

                        <div class="form-group">
                            <label>nom_origine</label>
                            <input type="text" class="form-control" id="nom_origineED" runat="server" required="required" />
                        </div>
                    </div>
                    <div class="modal-footer">
                        <asp:Button type="submit" Text="Modifier " class="btn btn-success" OnClick="EditButton_Origine_Click" runat="server"></asp:Button>
                        <asp:Button runat="server" Text="Annuler" CssClass="btn btn-secondary" data-dismiss="modal" />
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-- Supprimer Station -->
    <% Server.Transfer("deleteOrigine.aspx");%>
</body>
</html>
