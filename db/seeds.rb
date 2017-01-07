# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
# #
# # Examples:
# #
# #   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
# #   Mayor.create(name: 'Emanuel', city: cities.first)
# Iplrecord.delete_all
# Testrecord.delete_all
# Twentyrecord.delete_all
# Odirecord.delete_all
# @all_players=Player.all
 
# @all_players.each do |t|
# 	puts t.name
	
 
# 	@all_records=t.records
 
# 	@all_records.each do |currRecord|
 
# 		if (!currRecord.nil?)
# 			#puts currRecord.name
# 			if(currRecord.name == "ODI")
# 				s1=currRecord
# 				o1=Odirecord.new
# 				o1.m=s1.m
# 				o1.inn=s1.inn
# 				o1.no=s1.no
# 				o1.runs=s1.runs
# 				o1.hs=s1.hs
# 				o1.avg=s1.avg
# 				o1.bf=s1.bf
# 				o1.sr=s1.sr
# 				o1.hundred=s1.hundred
# 				o1.dhundred=s1.dhundred
# 				o1.fifty=s1.fifty
# 				o1.four=s1.four
# 				o1.six=s1.six
# 				o1.st=s1.st
# 				o1.player_id=s1.id
# 				o1.save
# 				if(t.odirecord.nil?)
# 					t.odirecord = o1
# 				end
				
				

# 			elsif (currRecord.name == "T20I")
# 				s1=currRecord
# 				o1=Twentyrecord.new
# 				o1.m=s1.m
# 				o1.inn=s1.inn
# 				o1.no=s1.no
# 				o1.runs=s1.runs
# 				o1.hs=s1.hs
# 				o1.avg=s1.avg
# 				o1.bf=s1.bf
# 				o1.sr=s1.sr
# 				o1.hundred=s1.hundred
# 				o1.dhundred=s1.dhundred
# 				o1.fifty=s1.fifty
# 				o1.four=s1.four
# 				o1.six=s1.six
# 				o1.st=s1.st
# 				o1.player_id=s1.id
# 				o1.save
# 				if(t.twentyrecord.nil?)
# 					t.twentyrecord = o1;
# 				end
				
# 			elsif (currRecord.name == "Tests")
# 				s1=currRecord
# 				o1=Testrecord.new
# 				o1.m=s1.m
# 				o1.inn=s1.inn
# 				o1.no=s1.no
# 				o1.runs=s1.runs
# 				o1.hs=s1.hs
# 				o1.avg=s1.avg
# 				o1.bf=s1.bf
# 				o1.sr=s1.sr
# 				o1.hundred=s1.hundred
# 				o1.dhundred=s1.dhundred
# 				o1.fifty=s1.fifty
# 				o1.four=s1.four
# 				o1.six=s1.six
# 				o1.st=s1.st
# 				o1.player_id=s1.id
# 				o1.save
# 				if(t.testrecord.nil?)
# 					t.testrecord = o1;
# 				end
				
# 			elsif (currRecord.name == "IPL")
# 				s1=currRecord
# 				o1=Iplrecord.new
# 				o1.m=s1.m
# 				o1.inn=s1.inn
# 				o1.no=s1.no
# 				o1.runs=s1.runs
# 				o1.hs=s1.hs
# 				o1.avg=s1.avg
# 				o1.bf=s1.bf
# 				o1.sr=s1.sr
# 				o1.hundred=s1.hundred
# 				o1.dhundred=s1.dhundred
# 				o1.fifty=s1.fifty
# 				o1.four=s1.four
# 				o1.six=s1.six
# 				o1.st=s1.st
# 				o1.player_id=s1.id
# 				o1.save
# 				if(t.iplrecord.nil?)
# 					t.iplrecord = o1;
# 				end
				
# 			else
# 			end	
# 		end 
# 	end
# end
# arr=[]

# Player.all.each do |p|
# 	if (!arr.include?(p.country))
# 		arr.push(p.country)
# 	end
	
#  end
# arr.each do |a|
# 	c=Country.new
# 	c.name=a
# 	c.save
# end
 # Player.all.each do |p|
	# p.country=p.country.lstrip
	# p.save
	
 # end
 # for i in 5000..5001
 # 	p=Player.find_by_webId(i)
 # 	if p.nil?
	# 	next
	# end
	# p.webId=p.webId-1
	# p.save
 # end
# browser = Watir::Browser.new(:phantomjs)
# for i in 1910..5000 
# 	puts(i)
# 	player=Player.find_by_webId(i)
# 	if player.nil?
# 		next
		
# 	end
# 	url="http://www.cricbuzz.com/profiles/" + i.to_s
# 	sleep(1)
# 	browser.goto(url)
# 	doc1=Nokogiri::HTML.parse(browser.html)
# 	player.country=doc1.css(".cb-font-18 span").text
# 	player.Born=doc1.css(".cb-lst-itm-sm:nth-child(3)").text
# 	player.birth=doc1.css(".cb-lst-itm-sm:nth-child(5)").text
# 	player.nickname=doc1.css(".cb-lst-itm-sm:nth-child(7)").text
# 	player.height=doc1.css(".cb-lst-itm-sm:nth-child(9)").text
# 	player.role=doc1.css(".cb-lst-itm-sm:nth-child(11)").text
# 	player.batStyle=doc1.css(".cb-lst-itm-sm:nth-child(13)").text
# 	player.bowlStyle=doc1.css(".cb-lst-itm-sm:nth-child(15)").text
# 	player.debut=doc1.css(".cb-lst-itm-sm:nth-child(32)").text
# 	player.lastMatch=doc1.css(".cb-lst-itm-sm:nth-child(34)").text
# 	player.currentTeams=doc1.css(".cb-lst-itm-sm:nth-child(36)").text
# 	player.save
	



# end



browser = Watir::Browser.new(:phantomjs)
url="http://m.cricbuzz.com/cricket-stats/iccrankings/teams"
browser.goto(url)
doc1=Nokogiri::HTML.parse(browser.html)
10.times do |i|
	j=0
	
	str=".list-group:nth-child(8) tr:nth-child("+(i+2).to_s+") .cbz-grid-table-fix:nth-child("+(j+2).to_s+")"
	str1=".list-group:nth-child(8) tr:nth-child("+(i+2).to_s+") .cbz-grid-table-fix:nth-child("+(j+1).to_s+")"
	str2=".list-group:nth-child(8) tr:nth-child("+(i+2).to_s+") .cbz-grid-table-fix:nth-child("+(j+3).to_s+")"
	str3=".list-group:nth-child(8) tr:nth-child("+(i+2).to_s+") .cbz-grid-table-fix:nth-child("+(j+4).to_s+")"
	name=doc1.css(str).text
	rank=doc1.css(str1).text
	points=doc1.css(str2).text
	rating=doc1.css(str3).text
	t=Twentyrank.new
	t.points=points
	t.rating=rating
	t.rank=rank
	c=Country.find_by_name(name)
	c.twentyrank=t
end

