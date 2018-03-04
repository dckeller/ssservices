class Chat < ApplicationRecord
	belongs_to 	:slot
	 
	has_many 		:messages
end
