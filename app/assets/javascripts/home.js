// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).ready(function(){
  $('ul.location-list').hide();
  $('a.icon.icon-destinations').on('click', revealLocations);

});

function revealLocations() {
  $('ul.location-list').slideDown('slow');
}