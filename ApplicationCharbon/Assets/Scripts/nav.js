const btnOpen = document.querySelector('.btn-open');
const btnClose = document.querySelector('.btn-close');
const fullNavItem = document.querySelector('.full-nav-item');

btnOpen.addEventListener('click', () => {
    fullNavItem.classList.add('show-full-nav-item');
    document.querySelector('.wrapper-header').classList.add('swipe-wrapper-header');
    if (fullNavItem.classList.contains('show-full-nav-item')) {
        btnClose.style.display = 'block';
        btnOpen.style.display = 'none';
    };
    activateBtnClose();
});

function activateBtnClose() {
    btnClose.addEventListener('click', () => {
        fullNavItem.classList.remove('show-full-nav-item');
        document.querySelector('.wrapper-header').classList.remove('swipe-wrapper-header');
        if (!fullNavItem.classList.contains('show-full-nav-item')) {
            btnClose.style.display = 'none';
            btnOpen.style.display = 'block';
        };
    });
};




//newMonday 
var welcomeHeading = document.getElementById('welcome-heading');
//station
//$(document).ready(function () {
//    $('#station-link, #station').click(function (e) {
//        e.preventDefault();
//        welcomeHeading.classList.add('hidden');
//        $('#content').load('stations.aspx');
//    });
//    $('#fournisseur-link, #fournisseur').click(function (e) {
//        e.preventDefault();
//        welcomeHeading.classList.add('hidden');
//        $('#content').load('Fourni.aspx');
//    });
//});


