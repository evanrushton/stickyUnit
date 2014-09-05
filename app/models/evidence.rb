class Evidence < ActiveRecord::Base
	belongs_to :unit
	has_and_belongs_to_many :assessments
	has_many :goals
end
