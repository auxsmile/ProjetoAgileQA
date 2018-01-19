class CorrectiveAction < ActiveRecord::Base
  validates :name, :description, presence: true
	validates_length_of :description, maximum: 200

	belongs_to :unconformity
end
