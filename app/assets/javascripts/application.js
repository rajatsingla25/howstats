// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//

//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require Chart
//= require Chart.min
//= require materialize-sprockets
//= require jquery.ui.all

//= require materialize/extras/nouislider
function teamIndex(argument) {
	// body...
	window.location.href="http://localhost:3000/Team/Index";
	$("#home").removeClass("active");
	$("#team").addClass("active");
}
function playerIndex(argument) {
	// body...
	window.location.href="http://localhost:3000/Player/Index";
	$("#player").addClass("active");
}
function home(argument) {
	// body...
	window.location.href="http://localhost:3000/home";
	$("#home").addClass("active");
}


