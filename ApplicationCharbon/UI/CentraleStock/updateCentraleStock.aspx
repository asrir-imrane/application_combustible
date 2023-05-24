<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="updateCentraleStock.aspx.cs" Inherits="ApplicationCharbon.UI.updateCentraleStock" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!-- Bootstrap CSS -->

    <script>

        $(".edit-CS").click(function (e) {
            e.preventDefault();

            var IdSCentrale = $(this).data('idscentrale');
            var Stock_Initial = $(this).data('stockinitial');
            var Stock_Final = $(this).data('stockfinal');
            var Stock_Ajustement = $(this).data('stockajustement');
            var Stock_Date = $(this).data('stockdate');
            $('#Id_SCentrale').val(IdSCentrale);
            $('#stock_initial').val(Stock_Initial);
            $('#stock_final').val(Stock_Final);
            $('#stock_ajustement').val(Stock_Ajustement);
            $('#stock_date').val(Stock_Date);
            if ($(this).hasClass("edit-CS")) {
                $("#modifierCS").modal("show");
            }
        });
        $(".delete-CS").click(function (e) {
            e.preventDefault();

            var IdSCentrale = $(this).data('idscentrale');

            $('#id_CS').val(IdSCentrale);

            if ($(this).hasClass("delete-CS")) {
                $("#supprimerCS").modal("show");
            }
        });
    </script>

</head>
<body>

    <div id="modifierCS" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <form id="editCSForm" runat="server">

                    <div class="modal-header">
                        <h4 class="modal-title">Modifier Centrale Stock</h4>
                        <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
                    </div>

                    <div class="modal-body">
                        <div class="form-group">
                            <label for="Id_SCentrale" class="form-label">ID Centrale Stock </label>

                            <input type="text" class="form-control" id="Id_SCentrale" name="Id_SCentrale" readonly="readonly" value="" />

                        </div>

                        <div class="form-group">
                            <label for="stock_initial" class="form-label">Stock initial </label>

                            <input type="text" class="form-control" id="stock_initial" runat="server" required="required" />

                        </div>
                        <div class="form-group">
                            <label for="stock_final" class="form-label">Stock Final </label>

                            <input type="text" class="form-control" id="stock_final" runat="server" required="required" />

                        </div>
                        <div class="form-group">
                            <label for="stock_ajustement" class="form-label">Stock Ajustement </label>

                            <input type="text" class="form-control" id="stock_ajustement" runat="server" required="required" />

                        </div>
                        <div class="form-group">
                            <label for="Date" class="form-label">Stock Date </label>
                            <asp:TextBox ID="date" runat="server" CssClass="form-control" required="required" type="date"></asp:TextBox>
                        </div>
                       
                    </div>
                    <div class="modal-footer">
                        <asp:Button type="submit" Text="Modifier Centrale Stock" class="btn btn-success" OnClick="EditButton_CS_Click" runat="server"></asp:Button>
                        <asp:Button runat="server" Text="Annuler" CssClass="btn btn-secondary" data-dismiss="modal" />
                    </div>

                </form>
            </div>
        </div>
    </div>


    <!-- Supprimer CS -->
    <% Server.Transfer("deleteCentraleStock.aspx");%>
</body>
</html>
