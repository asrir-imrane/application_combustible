<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="updateStock.aspx.cs" Inherits="ApplicationCharbon.UI.updateStock" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Modifier Stock</title>

    <script>
        $(".edit-stock").click(function (e) {
            e.preventDefault();

            var IdStock = $(this).data('stockid');
            $('#id_stock').val(IdStock);

            if ($(this).hasClass("edit-stock")) {
                $("#modifierStock").modal("show");
            }
        });
        $(".delete-stock").click(function (e) {
            e.preventDefault();

            var Idstock = $(this).data('stockid');
            $('#id_stocksupp').val(Idstock);

            if ($(this).hasClass("delete-stock")) {
                $("#supprimerStock").modal("show");
            }
        });

    </script>

</head>

<body>
    <div id="modifierStock" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <form runat="server">
                    <div class="modal-header">
                        <h4 class="modal-title">Modifier Stock</h4>
                        <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
                    </div>

                    <div class="modal-body">
                        <div class="form-group">
                            <label for="id stock" class="form-label">ID du Stock :</label>
                            <input type="text" class="form-control" id="id_stock" name="id_stock" readonly="readonly" value="" />

                        </div>
                        <div class="form-group">
                            <label for="Date" class="form-label">Date </label>
                            <asp:TextBox ID="date" runat="server" CssClass="form-control" required="required" type="date"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label for="Consommation" class="form-label">Consommation</label>
                            <asp:TextBox type="number" class="form-control" ID="consomation" runat="server" required="required"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="Livraison" class="form-label">Livraison</label>
                            <asp:TextBox type="number" ID="livraisons" runat="server" CssClass="form-control" required="required"></asp:TextBox>
                        </div>

                        <div class="form-group ">
                            <label for="Id Bateau" class="form-label">Id Bateau</label>
                            <asp:DropDownList ID="nombateauliste" runat="server" class="form-select"></asp:DropDownList>
                        </div>
                        <div class="form-group">
                            <label for="Decharge" class="form-label">Decharge</label>
                            <asp:TextBox type="number" ID="decharges" runat="server" CssClass="form-control" required="required"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="Autonomie" class="form-label">Autonomie</label>
                            <asp:TextBox type="number" ID="autonomies" runat="server" CssClass="form-control" required="required"></asp:TextBox>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <asp:Button type="submit" Text="Ajouter stock" class="btn btn-success" OnClick="EditButton_Stock_Click" runat="server"></asp:Button>
                        <asp:Button runat="server" Text="Annuler" CssClass="btn btn-secondary" data-dismiss="modal" />
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!-- Supprimer Bateau -->
    <% Server.Transfer("deleteStock.aspx");%>
</body>
</html>

