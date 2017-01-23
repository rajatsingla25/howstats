class PlayerController < ApplicationController

	# autocomplete :Player , :name ,full: true
	before_action :set_players, only: [:compare]
	before_action :set_records, only: [:compare]
	before_action :set_player, only: [:profile]
	before_action :set_country, only: [:country]
	def odi_info
		@player = Player.find_by_webId(params[:id])
		respond_to do |format|
		format.json { 
			# render :json => {@player.records.first (:only => [:four,:six,:sr,:avg]),@player(:only => [:name])}
			#render :json => { @player.records.first , @player }
			#json2 = @player.odirecord.to_json(:only => [:four,:six,:sr,:avg])
			json2 = @player.odirecord.to_json(:except => [:created_at,:updated_at])  
			json1= @player.to_json(:only => [:name]) 
			json1[json1.length()-1]=""
			json2[0]=","
			render :json => json1+json2
		}
		#render json: @player
	    end
	end
	 def autocomplete_player_name
	 		@all_players=Player.where("slug LIKE '%#{params[:term]}%'")
	 		puts @all_players
	 		render :json => @all_players.to_json(:only => [:name ,:webId,:slug])
	end


	# end
	def player_info
		@player = Player.find_by_webId(params[:id])
		respond_to do |format|
		format.json { 
			json2 = @player.to_json(:except => [:created_at,:updated_at])  
			
			render :json => json2
		}
	    end
	end
	def t20_info
		@player = Player.find_by_webId(params[:id])
		respond_to do |format|
		format.json { 
			json2 = @player.twentyrecord.to_json(:except => [:created_at,:updated_at])  
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
			json2 = @player.testrecord.to_json(:except => [:created_at,:updated_at])  
			json1= @player.to_json(:only => [:name]) 
			json1[json1.length()-1]=""
			json2[0]=","
			render :json => json1+json2
		}
	    end
	end
	def ipl_info
		@player = Player.find_by_webId(params[:id])
		respond_to do |format|
		format.json { 
			json2 = @player.iplrecord.to_json(:except => [:created_at,:updated_at])  
			json1= @player.to_json(:only => [:name]) 
			json1[json1.length()-1]=""
			json2[0]=","
			render :json => json1+json2
		}
	    end
	end

	def home
	end
	def teamIndex
	end
	def playerIndex
	end

	def compare
		puts params[:p1]
		
		@idd1 = @player1.webId
		@idd2 = @player2.webId
	end
	def profile
		@id=@player.webId
		
	end
	def country
		
		
	end
	def set_player
		@player = Player.where("slug LIKE '%#{params[:id]}%'").first
		
	end
	def set_players
		@player1 = Player.where("slug LIKE '#{params[:id1]}'").first
		@player2 = Player.where("slug LIKE '#{params[:id2]}'").first
		if (@player1.nil?||@player2.nil?)
			flash[:notice] = "Player not found"
			redirect_to home_path
		end
		
	end
	def set_country
		@country = Country.where("slug LIKE '#{params[:id]}'").first		
		
	end
	 def set_records

	 	@p1TestRecord =@player1.testrecord
	 	@p1OdiRecord =@player1.odirecord
	 	@p1T20Record =@player1.twentyrecord
	 	@p2TestRecord =@player2.testrecord
	 	@p2OdiRecord =@player2.odirecord
	 	@p2T20Record =@player2.twentyrecord
	 	@p1IplRecord =@player1.iplrecord
	 	@p2IplRecord =@player2.iplrecord

	 	if(!@p1TestRecord.nil? && !@p2TestRecord.nil?)
	 		@notnullrecordfirst=@p1TestRecord
	 		@notnullrecordsecond=@p2TestRecord
	 		@formatofnullrecord="Test Comparison"
	 	elsif(!@p1OdiRecord.nil? && !@p2OdiRecord.nil?)
	 		@notnullrecordfirst=@p1OdiRecord
	 		@notnullrecordsecond=@p2OdiRecord
	 		@formatofnullrecord="ODI Comparison"
	 	elsif(!@p1T20Record.nil? && !@p2T20Record.nil?)
	 			@notnullrecordfirst=@p1OdiRecord
	 		    @notnullrecordsecond=@p2OdiRecord
	 		    @formatofnullrecord="T20 Comparison"
	 	elsif(!@p1IplRecord.nil? && !@p2IplRecord.nil?)
	 			@notnullrecordfirst=@p1IplRecord
	 			@notnullrecordsecond=@p2IplRecord
	 			@formatofnullrecord="IPL Comparison"
	 	end	
	 	if (@notnullrecordfirst.nil?||@notnullrecordsecond.nil?)
			flash[:notice] = "Records not Available"
			redirect_to home_path
		end
	end


end
