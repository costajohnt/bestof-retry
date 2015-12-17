$( document ).ready(function() {

    function changeClass() {
    	$('.jumbotron h1').addClass('animated fadeOut');
    }

	$('#searchbtn').on('click', changeClass);

    $("#location").geocomplete();  
});

