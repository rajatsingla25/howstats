$('#search').autocomplete({

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
                                    value: playerName
                                }
                            }))
                        }
                    });
                },
                open: function() {
                   
                  },
                select: function(event,ui) {
                      window.location.href="http://localhost:3000/profile/"+ui.item.label;
                  
                }
            });