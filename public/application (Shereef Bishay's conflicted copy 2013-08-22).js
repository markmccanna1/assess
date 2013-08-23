$(document).ready(function() {

  console.log(5)


  $('#create_event').submit(function(event) {
    console.log(2)
    event.preventDefault()

    console.log( $('input[name="event"]').val())

    // $('#create_event').
    
    //get the event attributes, pass them in the post method to the post method that creates
    //an event object

    // $.post('/create_event', {event : event})




  })







});
