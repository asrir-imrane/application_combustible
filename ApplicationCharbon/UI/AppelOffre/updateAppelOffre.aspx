<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="updateAppelOffre.aspx.cs" Inherits="ApplicationCharbon.UI.updateAppelOffre" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Modifier AO</title>
    <script>

        $(".edit-AO").click(function (e) {
            e.preventDefault();
            var appOffre = $(this).data('appoffreid');
            $('#id_appOffreED').val(appOffre);
            var idPlanning = $(this).data('planingid'); 
            $('#idPlanningListe').val(idPlanning);
            var type = $(this).data('types');
            $('#nomTypeListe').val(type);
            var Tonnage = $(this).data('tonn');
            $('#tonnage').val(Tonnage);
            var nbrbateaux = $(this).data('nbr');
            $('#nbr_bateaux').val(nbrbateaux);
            var datecreation = $(this).data('creation');
            $('#date_creation').val(datecreation);
            var dateEmission = $(this).data('emission');
            $('#date_Emission').val(dateEmission);
            var datelivraison = $(this).data('livraison');
            $('#date_livraison').val(datelivraison);
            var Observation = $(this).data('obser');
            $('#observation').val(Observation);
            var Status = $(this).data('stat');
            $('#status').val(Status);


            if ($(this).hasClass("edit-AO")) {
                $("#modifierAO").modal("show");
            }
        });

        $(".delete-AO").click(function (e) {
            e.preventDefault();

            var appOffre = $(this).data('appoffreid');
            $('#Id_AOSupp').val(appOffre);

            if ($(this).hasClass("delete-AO")) {
                $("#supprimerAO").modal("show");
            }
        });
    </script>
</head>
<body>
    <div class="modal fade" id="modifierAO" tabindex="-1" aria-labelledby="modifierAOLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <form runat="server">
                    <div class="modal-header">
                        <h5 class="modal-title" id="modifierAOLabel">Modifier Appel Offre</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>


                    <div class="modal-body">
                        <div class="form-group">
                            <label>Id Appel Offre</label>
                            <input type="text" class="form-control" id="id_appOffreED" runat="server" required="required" readonly="readonly" />
                        </div>
                        <div class="form-group">
                            <label>Id Planning</label>
                            <asp:DropDownList ID="idPlanningListe" runat="server" class="form-select"></asp:DropDownList>
                        </div>
                        <div class="form-group">
                            <label>Type</label>
                            <asp:DropDownList ID="nomTypeListe" runat="server" class="form-select"></asp:DropDownList>
                        </div>

                        <div class="form-group">
                            <label>Tonnage</label>
                            <input type="text" class="form-control" id="tonnage" runat="server" required="required" />
                        </div>

                        <div class="form-group">
                            <label>Nbr bateaux</label>
                            <input type="text" class="form-control" id="nbr_bateaux" runat="server" required="required" />
                        </div>
                        <div class="form-group">
                            <label>Date Creation</label>
                            <input type="date" class="form-control" id="date_creation" runat="server" required="required" />
                        </div>
                        <div class="form-group">
                            <label>Date Emission</label>
                            <input type="date" class="form-control" id="date_Emission" runat="server" required="required" />
                        </div>
                        <div class="form-group">
                            <label>Date Livraison</label>
                            <input type="date" class="form-control" id="date_livraison" runat="server" required="required" />
                        </div>

                        <div class="form-group">
                            <label for="observation">Observation</label>
                            <textarea type="text" class="form-control" id="observation" runat="server" required="required" rows="5"></textarea>
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
                        <asp:Button type="submit" Text="Modifier " class="btn btn-success" OnClick="EditButton_AO_Click" runat="server"></asp:Button>
                        <asp:Button runat="server" Text="Annuler" CssClass="btn btn-secondary" data-dismiss="modal" />
                    </div>
                </form>
            </div>
        </div>
    </div>


    <!-- Supprimer PV -->
    <% Server.Transfer("deleteAppelOffre.aspx");%>
</body>
</html>
