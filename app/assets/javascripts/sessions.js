$(document).on('turbolinks:load', function(){
  $('#myGallery').carousel();
 });

window.sr = ScrollReveal({ duration: 2000 });
	sr.reveal('div.card.card-1', 50);