$(document).ready(function() {
  $('.results').hide();
  $('form').submit(function() { 
    var string = $("form").serialize();
    console.log(string);
    var request = $.post('/', string);
    request.done(function(responseText) { console.log(responseText); })
    $('.results').show();
    return false;
  });
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
});
