$(document).ready(function() {

  console.log(5)


  $('#create_event').submit(function(event) {
    console.log(2)
    event.preventDefault()
    

    var event_data = $(this).serialize()
    console.log($(this).serializeArray())

    // $('#create_event').
    
    //get the event attributes, pass them in the post method to the post method that creates
    //an event object

    $.post('/create_event', event_data, function(response) {

    })


  })







});
