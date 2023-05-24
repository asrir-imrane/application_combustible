$(document).ready(function () {


    // Filter table rows based on searched term
    $("input[type='search']").on("keyup", function () {
        var term = $(this).val().toLowerCase();
        $("table tbody tr").each(function () {
            var found = false;
            $(this).find("td").each(function () {
                if ($(this).text().toLowerCase().indexOf(term) > -1) {
                    found = true;
                    return false;
                }
            });
            if (found) {
                $(this).show();
            } else {
                $(this).hide();
            }
        });
    });

});





$(function () {
    $('[data-dismiss="modal"]').click(function () {
        $('.modal').modal('hide');
    });
});

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



$(".edit-station").click(function (e) {
    e.preventDefault();

    var Stationid = $(this).data('stationid');
    $('#id_station').val(Stationid);

    if ($(this).hasClass("edit-station")) {
        $("#modifierStation").modal("show");
    }
});
$(".delete-station").click(function (e) {
    e.preventDefault();

    var Stationid = $(this).data('stationid');
    $('#idstation').val(Stationid);
    if ($(this).hasClass("delete-station")) {
        $("#supprimerStation").modal("show");
    }
});

$(".details-station").click(function (e) {
    e.preventDefault();
    var Stationname = $(this).data('stationname');
    var Stationadress = $(this).data('stationadress');
    var Stationphone = $(this).data('stationphone');
    $('#modal-title').html(Stationname);
    $('#adresse').html(Stationadress);
    $('#telephone').html(Stationphone);
    if ($(this).hasClass("details-station")) {
        $("#showdetailsModal").modal("show");
    }
});






$(document).ready(function () {
    $(".edit-PV").click(function (e) {
        e.preventDefault();

        var ID_PV = $(this).data('pvid');
        $('#id_planning').val(ID_PV);
        $("#modifierPV").modal("show");
    });
});

$(".delete-PV").click(function (e) {
    e.preventDefault();

    var Stationid = $(this).data('pvid');
    $('#id_PV').val(Stationid);
    if ($(this).hasClass("delete-PV")) {
        $("#supprimerPV").modal("show");
    }
});



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

$(".edit-bateau").click(function (e) {
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
$(".delete-bateau").click(function (e) {
    e.preventDefault();

    var IdBateau = $(this).data('bateauid');

    $('#id_bateau').val(IdBateau);

    if ($(this).hasClass("delete-bateau")) {
        $("#supprimerBateau").modal("show");
    }
});


$(".edit-type").click(function (e) {
    e.preventDefault();
    var IdType = $(this).data('typeid');
    $('#id_type').val(IdType);
    if ($(this).hasClass("edit-type")) {
        $("#modifierType").modal("show");
    }
});
$(".delete-type").click(function (e) {
    e.preventDefault();

    var IdType = $(this).data('typeid');

    $('#id_typesupp').val(IdType);

    if ($(this).hasClass("delete-type")) {
        $("#supprimerType").modal("show");
    }
});




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














