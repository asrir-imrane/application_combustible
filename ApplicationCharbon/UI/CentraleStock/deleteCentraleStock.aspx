<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="deleteCentraleStock.aspx.cs" Inherits="ApplicationCharbon.UI.deleteCentraleStock" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Supprimer Centrale Stock </title>

</head>
<body>

    <div class="modal fade" id="supprimerCS" tabindex="-1" aria-labelledby="supprimerCSLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <form runat="server">
                    <div class="modal-header">
                        <h5 class="modal-title" id="supprimerCSLabel">Supprimer Centrale Stock</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <label for="id_CS" class="form-label">ID du Centrale Stock :</label>

                            <input type="text" class="form-control" id="id_CS" name="id_CS" readonly="readonly" value="" />


                        </div>
                        <p style="display: block;"><strong>Voulez-vous vraiment supprimer cet enregistrement ?</strong></p>
                    </div>

                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Annuler</button>
                        <asp:Button type="submit" Text="Supprimer" class="btn btn-danger" OnClick="DeleteButton_CS_Click" runat="server"></asp:Button>
                    </div>
                </form>
            </div>
        </div>
    </div>

</body>
</html>

