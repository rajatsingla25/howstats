class PlayerController < ApplicationController

	def odi_info
		@player = Player.find_by_webId(params[:id])
		respond_to do |format|
		format.json { 
			# render :json => {@player.records.first (:only => [:four,:six,:sr,:avg]),@player(:only => [:name])}
			#render :json => { @player.records.first , @player }
			json2 = @player.records.first.to_json(:only => [:four,:six,:sr,:avg])  
			json1= @player.to_json(:only => [:name]) 
			json1[json1.length()-1]=""
			json2[0]=","
			render :json => json1+json2
		}
	    end
	end
	def t20_info
		@player = Player.find_by_webId(params[:id])
		respond_to do |format|
		format.json { 
			json2 = @player.records.second.to_json(:only => [:four,:six,:sr,:avg])  
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
			json2 = @player.records.third.to_json(:only => [:four,:six,:sr,:avg])  
			json1= @player.to_json(:only => [:name]) 
			json1[json1.length()-1]=""
			json2[0]=","
			render :json => json1+json2
		}
	    end
	end
	def compare
			render "compare.html.erb"
	end

end
