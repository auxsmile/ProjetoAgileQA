class Audit < ActiveRecord::Base
    validates :identification, :description, :datetime, :schedule, presence:true
	KIND = %w(Produto Processo)
	validates_inclusion_of :kind, in: KIND
  belongs_to :projetc
  has_many :unconformities, dependent: :destroy
  
end
