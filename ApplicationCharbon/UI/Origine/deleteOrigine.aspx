<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="deleteOrigine.aspx.cs" Inherits="ApplicationCharbon.UI.deleteOrigine" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Supprimer Station </title>
    <script>

        $(".edit-origin").click(function (e) {
            e.preventDefault();

            var IdOrigine = $(this).data('originid');
            var NameOrigine = $(this).data('originname');

            $('#id_origineED').val(IdOrigine);
            $('#nom_origineED').val(NameOrigine);

            if ($(this).hasClass("edit-origin")) {
                $("#modifierOrigine").modal("show");
            }
        });
        $(".delete-origin").click(function (e) {
            e.preventDefault();

            var IdOrigine = $(this).data('originid');

            $('#id_origineSupp').val(IdOrigine);

            if ($(this).hasClass("delete-origin")) {
                $("#supprimerOrigine").modal("show");
            }
        });

    </script>
</head>
<body>

    <div class="modal fade" id="supprimerOrigine" tabindex="-1" aria-labelledby="supprimerOrigineLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <form runat="server">
                    <div class="modal-header">
                        <h5 class="modal-title" id="supprimerOrigineLabel">Supprimer Station</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <label for="id_origineSupp" class="form-label">ID :</label>
                            <div class="input-group">
                                <input type="text" class="form-control" id="id_origineSupp" name="id_origineSupp" readonly="readonly" value="" />
                            </div>
                        </div>
                        <p style="display: block;"><strong>Voulez-vous vraiment supprimer cet enregistrement ?</strong></p>

                    </div>

                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Annuler</button>
                        <asp:Button type="submit" Text="Supprimer" class="btn btn-danger" OnClick="DeleteButton_Origine_Click" runat="server"></asp:Button>
                    </div>
                </form>
            </div>
        </div>
    </div>

</body>
</html>
