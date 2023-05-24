<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="deleteType.aspx.cs" Inherits="ApplicationCharbon.UI.deleteType" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Supprimer Type</title>

    <script src="../Assets/Scripts/script.js"></script>
</head>
<body>

    <div class="modal fade" id="supprimerType" tabindex="-1" aria-labelledby="supprimerTypeLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <form runat="server">
                    <div class="modal-header">
                        <h5 class="modal-title" id="supprimerTypeLabel">Supprimer Station</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <label for="id_typesupp" class="label">ID du Station :</label>
                            <div class="input-group">
                                <input type="text" class="form-control" id="id_typesupp" name="id_typesupp" readonly="readonly" value="" />
                            </div>
                        </div>
                        <p style="display: block;"><strong>Voulez-vous vraiment supprimer cet enregistrement ?</strong></p>
                    </div>

                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Annuler</button>
                        <asp:Button type="submit" Text="Supprimer" class="btn btn-danger" OnClick="DeleteButton_Type_Click" runat="server"></asp:Button>
                    </div>
                </form>
            </div>
        </div>
    </div>

</body>
</html>
