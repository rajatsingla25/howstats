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

//= require materialize-sprockets
//= require jquery.ui.all
//= require social-share-button

//= require materialize/extras/nouislider
function teamIndex(argument) {
	// body...
	window.location.href="http://139.59.43.80/Team/Index";
	$("#home").removeClass("active");
	$("#team").addClass("active");
}
function playerIndex(argument) {
	// body...
	window.location.href="http://139.59.43.80/Player/Index";
	$("#player").addClass("active");
}
function home(argument) {
	// body...
	window.location.href="http://139.59.43.80/home";
	$("#home").addClass("active");
}
$(document).ready(function() {
  // the "href" attribute of .modal-trigger must specify the modal ID that wants to be triggered
  $('.modal-trigger').leanModal();
});
$('#search').autocomplete({
                  minLength: 3,
                  source: function(request,response){
                  		console.log("here");
                      $.ajax({
                          method: 'GET',
                          url : '/players/autocomplete_player_name?term=' + $('#search').val(),
                          dataType : 'json',
                          success : function(data) {
                            data = data.slice(0,4);
                               response($.map(data,function(v,i) {
                                var playerName =  v.name;
 
                                return {
                                    id: v.webId,
                                    label: playerName,
                                    value: v.slug
                                }
                            }))
                        }
                    });
                },
                open: function() {
                   
                  },
                select: function(event,ui) {
                      window.location.href="http://localhost:3000/profile/"+ui.item.value;
                  
                },
                delay :0,
            }).data("ui-autocomplete")._renderItem = function (ul, item) {
  return $( "<li>" )
    .data( "ui-autocomplete-item", item )
    .append( "<a><div style='height:100px'><img src='http://i.cricketcb.com/stats/img/faceImages/"+item.id+".jpg' class='center circle' style='height:60px ;width:60px'>"+"<br><h6>"+item.label+"</h6></div></a>"  )
    .appendTo(ul);
    
};



