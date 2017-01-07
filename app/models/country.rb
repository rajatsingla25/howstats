class Country < ActiveRecord::Base
	has_many :players , :foreign_key => :country ,:primary_key => :name
end
