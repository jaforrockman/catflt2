class Person < ApplicationRecord
	has_many :children, :dependent => :destroy
	has_one :wife, :dependent => :destroy

		  
end
