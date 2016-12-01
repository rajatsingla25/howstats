class Player < ActiveRecord::Base
	has_one :iplrecord
	has_one :testrecord
	has_one :twentyrecord
	has_many :records
end
