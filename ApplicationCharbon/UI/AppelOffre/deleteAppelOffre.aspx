<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="deleteAppelOffre.aspx.cs" Inherits="ApplicationCharbon.UI.deleteAppelOffre" %>





<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Supprimer AO </title>

    <link rel="stylesheet" href="../Assets/CSS/StyleSheet.css" />
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="../Assets/Scripts/nav.js"></script>
    <script src="../Assets/Scripts/script.js"></script>
    <script>

</script>
</head>
<body>

    <div class="modal fade" id="supprimerAO" tabindex="-1" aria-labelledby="supprimerAOLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <form runat="server">
                    <div class="modal-header">
                        <h5 class="modal-title" id="supprimerAOLabel">Supprimer Appel Offre</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="form-group ">
                            <label for="id_AO" class="form-label">ID Apple Offre</label>
                            <div class="input-group">
                                <input type="text" class="form-control" id="Id_AOSupp" name="Id_AOSupp" readonly="readonly" value="" />
                            </div>
                        </div>
                        <p style="display: block;"><strong>Voulez-vous vraiment supprimer cet enregistrement ?</strong></p>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Annuler</button>
                        <asp:Button type="submit" Text="Supprimer" class="btn btn-danger" OnClick="DeleteButton_AO_Click" runat="server"></asp:Button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>





