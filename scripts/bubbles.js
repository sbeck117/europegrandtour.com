$(function() {
  $('.bubbles li a').click(function(e) {
    $('.bubbles li').removeClass('active');
    $(this).parent().addClass('active');
    e.preventDefault();
  });

  $('.bubbles li a').click(function(e) {
    var selected_section = $("#"+$(this).attr('data-city')),
        new_background = "url('/images/tour_photos/"+selected_section.attr('data-background')+"')";

    $('#tour section').css({visibility: 'hidden'});
    selected_section.css({visibility: 'visible'});
    $('.galleria-thumbnails-container').css({visibility: 'hidden'});

    $('#tour').css({backgroundImage: new_background});

    e.preventDefault();
  });
});
