class Category < ActiveRecord::Base
	has_one :prdfamily
	has_many :products
end
