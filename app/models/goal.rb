class Goal < ActiveRecord::Base
	belongs_to :unit
	belongs_to :evidence
end
