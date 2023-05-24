<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="updateContract.aspx.cs" Inherits="ApplicationCharbon.UI.updateContract" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Modifier Contrat</title>
    <script>

        $(".edit-contrat").click(function (e) {
            e.preventDefault();
            var IdContrat = $(this).data('contratid');
            $('#idContratED').val(IdContrat);
            var IdContratDetail = $(this).data('contratdetailid');
            $('#idContratDetailED').val(IdContratDetail);
            if ($(this).hasClass("edit-contrat")) {
                $("#modifierContrat").modal("show");
            }
        });
        $(".delete-contrat").click(function (e) {
            e.preventDefault();

            var IdContratSupp = $(this).data('contratid');
            $('#id_contratsupp').val(IdContratSupp);
            var IdContratSuppDetail = $(this).data('contratdetailid');
            $('#id_contratDsupp').val(IdContratSuppDetail);

          

            if ($(this).hasClass("delete-contrat")) {
                $("#supprimerContrat").modal("show");
            }
        });</script>
</head>
<body>
    <div id="modifierContrat" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <form runat="server">
                    <div class="modal-header">
                        <h2 class="modal-title">Modifier Contrat</h2>
                        <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
                         </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <label>ID Contrat</label>
                            <input type="text" class="form-control" id="idContratED" runat="server" required="required" readonly="readonly" />
                        </div>
                        <div class="form-group">
                            <label>ID Détails Contrat</label>
                            <input type="text" class="form-control" id="idContratDetailED" runat="server" required="required" readonly="readonly" />
                        </div>
                        <div class="form-group">
                            <label>Nom Contrat</label>
                            <input type="text" class="form-control" id="nom_contrat" runat="server" required="required" />
                        </div>
                        <div class="form-group">
                            <label>Id Appel Offre</label>
                            <asp:DropDownList ID="idAppOffreListe" runat="server" class="form-select" required="required"></asp:DropDownList>
                        </div>


                        <div class="form-group">
                            <label>Type</label>
                            <asp:DropDownList ID="TypeListe" runat="server" class="form-select" required="required"></asp:DropDownList>
                        </div>

                        <div class="form-group">
                            <label>Nom Fournisseur</label>
                            <asp:DropDownList ID="FournisseurListe" runat="server" CssClass="form-control"></asp:DropDownList>

                        </div>
                        <div class="form-group">
                            <label>Nombre de cargaisons</label>
                            <input type="text" class="form-control" id="nbr_cargaisons" runat="server" required="required" />
                        </div>
                        <div class="form-group">
                            <label>Quantite Total</label>
                            <input type="number" class="form-control" id="quantite_total" runat="server" required="required" />
                        </div>
                        <div class="form-group">
                            <label>Date Creation</label>
                            <input type="date" class="form-control" id="date_creation" runat="server" required="required" />
                        </div>
                        <div class="form-group">
                            <label>Date Debut</label>
                            <input type="date" class="form-control" id="date_debut" runat="server" required="required" />
                        </div>
                        <div class="form-group">
                            <label>Date Fin</label>
                            <input type="date" class="form-control" id="date_fin" runat="server" required="required" />
                        </div>
                        <div class="form-group">
                            <label>Statut</label>
                            <select class="form-select" id="status" runat="server" required="required">
                                <option value="validee">&#x1F7E2; Validée</option>
                                <option value="en_attente">&#x1F7E1; En attente</option>
                                <option value="rejetee">&#x1F534; Rejetée</option>
                            </select>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <input type="button" class="btn btn-secondary" data-dismiss="modal" value="Annuler" />
                        <asp:Button type="submit" Text="Modifier" class="btn btn-success" OnClick="EditButton_Contrat_Click" runat="server"></asp:Button>
                    </div>


                </form>
            </div>
        </div>
    </div>
    <!-- Supprimer PV -->
    <% Server.Transfer("deleteContract.aspx");%>
</body>
</html>
