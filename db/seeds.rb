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
@all_players=Player.all
@all_players.each do |p|
	p.webId=p.webId-1
	p.save
end