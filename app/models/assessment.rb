class Assessment < ActiveRecord::Base
	belongs_to :unit
	has_and_belongs_to_many :evidences
	has_many :activities
end
