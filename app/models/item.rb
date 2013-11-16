class Item < ActiveRecord::Base
	validates_presence_of :email, :name
end
