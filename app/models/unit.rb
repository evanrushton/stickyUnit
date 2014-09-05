class Unit < ActiveRecord::Base
	belongs_to :user
	has_many :goals
	has_many :assessments
	has_many :evidences
end
