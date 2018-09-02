class Person < ApplicationRecord
	has_one :wife, :dependent => :destroy
	has_many :children, :dependent => :destroy
		  
end
