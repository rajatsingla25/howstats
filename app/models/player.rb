class Player < ActiveRecord::Base
	has_one :iplrecord
	has_one :testrecord
	has_one :twentyrecord
	has_one :odirecord
	has_many :records
	belongs_to :counrty ,:foreign_key => :name ,:primary_key => :name
end
