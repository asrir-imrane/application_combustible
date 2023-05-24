<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="updateFournisseur.aspx.cs" Inherits="ApplicationCharbon.UI.updateFournisseur" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!-- Bootstrap CSS -->
    <script>
        $(".edit-fournisseur").click(function (e) {
            e.preventDefault();

            var fournisseurid = $(this).data('fournisseurid');
            $('#id_fournisseurED').val(fournisseurid);
            if ($(this).hasClass("edit-fournisseur")) {
                $("#modifierFournisseur").modal("show");
            }
        });

        $(".delete-fournisseur").click(function (e) {
            e.preventDefault();

            var fournisseurid = $(this).data('fournisseurid');
            $('#id_fournisseur').val(fournisseurid);
            if ($(this).hasClass("delete-fournisseur")) {
                $("#supprimerFournisseur").modal("show");
            }
        });
    </script>


</head>
<body>

    <div id="modifierFournisseur" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <form id="editUserForm" runat="server">

                    <div class="modal-header">
                        <h2 class="modal-title">Modifier un Fournisseur</h2>
                        <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
                    </div>

                    <div class="modal-body">
                        <div class="form-group">
                            <label for="id_fournisseurED" class="form-label">ID du fournisseur</label>
                            <div class="input-group">
                                <input type="text" class="form-control" id="id_fournisseurED" name="id_fournisseurED" readonly="readonly" value="" />
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="fournisseurID" class="form-label">Nom du fournisseur</label>
                            <div class="input-group">
                                <input type="text" class="form-control" id="nom_fournisseurED" runat="server" required="required" />
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <asp:Button type="submit" Text="Modifier le fournisseur" class="btn btn-success" OnClick="EditButton_Fournisseur_Click" runat="server"></asp:Button>
                        <asp:Button runat="server" Text="Annuler" CssClass="btn btn-secondary" data-dismiss="modal" />
                    </div>

                </form>
            </div>
        </div>
    </div>


    <!-- Supprimer Station -->
    <% Server.Transfer("deleteFournisseur.aspx");%>
</body>
</html>
