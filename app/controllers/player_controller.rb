class PlayerController < ApplicationController

	# autocomplete :Player , :name ,full: true
	before_action :set_players, only: [:compare]
	before_action :set_records, only: [:compare]
	def odi_info
		@player = Player.find_by_webId(params[:id])
		respond_to do |format|
		format.json { 
			# render :json => {@player.records.first (:only => [:four,:six,:sr,:avg]),@player(:only => [:name])}
			#render :json => { @player.records.first , @player }
			json2 = @player.records.second.to_json(:only => [:four,:six,:sr,:avg])  
			json1= @player.to_json(:only => [:name]) 
			json1[json1.length()-1]=""
			json2[0]=","
			render :json => json1+json2
		}
	    end
	end
	 def autocomplete_player_name
	 		@all_players=Player.where("name LIKE '%#{params[:term]}%'")
	 		puts @all_players
	 		render :json => @all_players.to_json(:only => [:name ,:webId])
	end


	# end
	def t20_info
		@player = Player.find_by_webId(params[:id])
		respond_to do |format|
		format.json { 
			json2 = @player.records.third.to_json(:only => [:four,:six,:sr,:avg])  
			json1= @player.to_json(:only => [:name]) 
			json1[json1.length()-1]=""
			json2[0]=","
			render :json => json1+json2
		}
	    end
	end
	def test_info
		@player = Player.find_by_webId(params[:id])
		respond_to do |format|
		format.json { 
			json2 = @player.records.first.to_json(:only => [:four,:six,:sr,:avg])  
			json1= @player.to_json(:only => [:name]) 
			json1[json1.length()-1]=""
			json2[0]=","
			render :json => json1+json2
		}
	    end
	end

	def home
	end

	def compare
		puts params[:p1]
		
		@idd1 = @player1.webId
		@idd2 = @player2.webId
	end
	def set_players
		@player1 = Player.where("name LIKE '%#{params[:p1]}%'").first
		@player2 = Player.where("name LIKE '%#{params[:p2]}%'").first
	end
	 def set_records
	 	@p1TestRecord =@player1.records.first
	 	@p1OdiRecord =@player1.records.second
	 	@p1T20Record =@player1.records.third
	 	@p2TestRecord =@player2.records.first
	 	@p2OdiRecord =@player2.records.second
	 	@p2T20Record =@player2.records.third
	 end

end
