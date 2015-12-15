$( document ).ready(function() {
    console.log( "ready!" );

    function changeClass() {
    	$('.jumbotron h1').addClass('animated fadeOut');
    }

    $('#searchbtn').on('click', changeClass);

    // function updatePost() {

    // }

    // $('#commentBtn').on('click')
    // $( "#location" ).focus(function() {
    //   alert( "Handler for .focus() called." );
    // });

    // $.fn.geocomplete(".commentform");

    $("#location").geocomplete();  // Option 1: Call on element.
    // $.fn.geocomplete("input"); // Option 2: Pass element as argument.
});

