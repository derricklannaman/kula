// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).ready(function(){
  $('a.icon.icon-destinations').on('click', revealLocations);
});

function revealLocations() {
  $('ul.location-list').slideToggle('fast');
}