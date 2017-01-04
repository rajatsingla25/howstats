namespace :updateData do
	task :update => :environment do
			browser = Watir::Browser.new(:phantomjs)
			for i in 1911..5000
				url="http://www.cricbuzz.com/profiles/" + i.to_s
				doc1=Nokogiri::HTML.parse(browser.html)
			    browser.goto(url)
			    sleep(1)
			    player=Player.new
			    name=doc1.css(".cb-font-40").text
			    if(name=="")
			    	next
			    end
			    player.name=name
			    player.webId=i
			    
			    arr=doc1.css(".cb-plyr-tbl:nth-child(1) tr:nth-child(1) td")
			    if(arr.size!=0)
			    	arr=arr.select{|i| i.name="class"}
			    	 d=arr.map{|i| i.children.text}
			    	 record=Record.new
			    	 	record.name=d[0]
			    	 	record.m=d[1]
			    	 	record.inn=d[2]
			    	 	record.no=d[3]
			    	 	record.runs=d[4]
			    	 	record.hs=d[5]
			    	 	record.avg=d[6]
			    	 	record.bf=d[7]
			    	 	record.sr=d[8]
			    	 	record.hundred=d[9]
			    	 	record.dhundred=d[10]
			    	 	record.fifty=d[11]
			    	 	record.four=d[12]
			    	 	record.six=d[13]
			    	 	record.st=d[14]
			    	 	record.save
			    	 	player.records<<record
			    	 
			    	
			    end
			    arr=doc1.css(".cb-plyr-tbl:nth-child(1) tr:nth-child(2) td")
			    if(arr.size!=0)
			    	arr=arr.select{|i| i.name="class"}
			    	 d=arr.map{|i| i.children.text}
			    	 record=Record.new
			    	 	record.name=d[0]
			    	 	record.m=d[1]
			    	 	record.inn=d[2]
			    	 	record.no=d[3]
			    	 	record.runs=d[4]
			    	 	record.hs=d[5]
			    	 	record.avg=d[6]
			    	 	record.bf=d[7]
			    	 	record.sr=d[8]
			    	 	record.hundred=d[9]
			    	 	record.dhundred=d[10]
			    	 	record.fifty=d[11]
			    	 	record.four=d[12]
			    	 	record.six=d[13]
			    	 	record.st=d[14]
			    	 	record.save
			    	 	player.records<<record
			    	 
			    	
			    end
			    	 
			    
			     arr=doc1.css(".cb-plyr-tbl:nth-child(1) tr:nth-child(3) td")
			    if(arr.size!=0)
			    	arr=arr.select{|i| i.name="class"}
			    	 d=arr.map{|i| i.children.text}
			    	 record=Record.new
			    	 	record.name=d[0]
			    	 	record.m=d[1]
			    	 	record.inn=d[2]
			    	 	record.no=d[3]
			    	 	record.runs=d[4]
			    	 	record.hs=d[5]
			    	 	record.avg=d[6]
			    	 	record.bf=d[7]
			    	 	record.sr=d[8]
			    	 	record.hundred=d[9]
			    	 	record.dhundred=d[10]
			    	 	record.fifty=d[11]
			    	 	record.four=d[12]
			    	 	record.six=d[13]
			    	 	record.st=d[14]
			    	 	record.save
			    	 	player.records<<record
			    	 
			    	
			    end
			    arr=doc1.css(".cb-plyr-tbl:nth-child(2) tr:nth-child(1) td")
			    if(arr.size!=0)
			    	arr=arr.select{|i| i.name="class"}
			    	 d=arr.map{|i| i.children.text}
			    	 record=Record.new
			    	 	record.name=d[0]
			    	 	record.m=d[1]
			    	 	record.inn=d[2]
			    	 	record.no=d[3]
			    	 	record.runs=d[4]
			    	 	record.hs=d[5]
			    	 	record.avg=d[6]
			    	 	record.bf=d[7]
			    	 	record.sr=d[8]
			    	 	record.hundred=d[9]
			    	 	record.dhundred=d[10]
			    	 	record.fifty=d[11]
			    	 	record.four=d[12]
			    	 	record.six=d[13]
			    	 	record.st=d[14]
			    	 	record.save
			    	 	player.records<<record
			    	 
			    	
			    end
			    arr=doc1.css(".cb-plyr-tbl:nth-child(2) tr:nth-child(2) td")
			    if(arr.size!=0)
			    	arr=arr.select{|i| i.name="class"}
			    	 d=arr.map{|i| i.children.text}
			    	 record=Record.new
			    	 	record.name=d[0]
			    	 	record.m=d[1]
			    	 	record.inn=d[2]
			    	 	record.no=d[3]
			    	 	record.runs=d[4]
			    	 	record.hs=d[5]
			    	 	record.avg=d[6]
			    	 	record.bf=d[7]
			    	 	record.sr=d[8]
			    	 	record.hundred=d[9]
			    	 	record.dhundred=d[10]
			    	 	record.fifty=d[11]
			    	 	record.four=d[12]
			    	 	record.six=d[13]
			    	 	record.st=d[14]
			    	 	record.save
			    	 	player.records<<record
			    	 
			    	
			    end
			    	 
			    
			     arr=doc1.css(".cb-plyr-tbl:nth-child(2) tr:nth-child(3) td")
			    if(arr.size!=0)
			    	arr=arr.select{|i| i.name="class"}
			    	 d=arr.map{|i| i.children.text}
			    	 record=Record.new
			    	 	record.name=d[0]
			    	 	record.m=d[1]
			    	 	record.inn=d[2]
			    	 	record.no=d[3]
			    	 	record.runs=d[4]
			    	 	record.hs=d[5]
			    	 	record.avg=d[6]
			    	 	record.bf=d[7]
			    	 	record.sr=d[8]
			    	 	record.hundred=d[9]
			    	 	record.dhundred=d[10]
			    	 	record.fifty=d[11]
			    	 	record.four=d[12]
			    	 	record.six=d[13]
			    	 	record.st=d[14]
			    	 	record.save
			    	 	player.records<<record
			    	 
			    	
			    end
			    player.save
			    	 
			end






			
			browser.close


			
		
		end
	

	end















	