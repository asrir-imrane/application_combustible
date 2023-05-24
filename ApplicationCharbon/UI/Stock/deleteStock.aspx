<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="deleteStock.aspx.cs" Inherits="ApplicationCharbon.UI.deleteStock" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Supprimer Stock</title>
    <script>
     
    </script>

</head>
<body>

    <div class="modal fade" id="supprimerStock" tabindex="-1" aria-labelledby="supprimerStockLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <form runat="server">
                    <div class="modal-header">
                        <h5 class="modal-title" id="supprimerStockLabel">Supprimer Stock</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <label for="id_stock" class="form-label">ID du Stock :</label>
                            <div class="input-group">
                                <input type="text" class="form-control" id="id_stocksupp" name="id_stock" readonly="readonly" value="" />
                            </div>
                        </div>
                        <p style="display: block;"><strong>Voulez-vous vraiment supprimer cet enregistrement ?</strong></p>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Annuler</button>
                        <asp:Button type="submit" Text="Supprimer" class="btn btn-danger" OnClick="DeleteButton_Stock_Click" runat="server"></asp:Button>
                    </div>

                </form>
            </div>
        </div>
    </div>

</body>
</html>


