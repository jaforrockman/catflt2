class Person < ApplicationRecord

	  has_one :wife, :dependent => :destroy
end
