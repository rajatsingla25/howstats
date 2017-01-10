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
