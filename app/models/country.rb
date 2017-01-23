class Country < ActiveRecord::Base
	has_many :players , :foreign_key => :country ,:primary_key => :name
	has_one :testrank
	has_one :odirank
	has_one :twentyrank
	extend FriendlyId 
	friendly_id :name, use: :slugged
end
