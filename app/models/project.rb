class Project < ActiveRecord::Base
  validates :name, :client, :date_ready, :description, presence:true
  has_many :audits,  dependent: :destroy
  has_one :team , dependent: :destroy
  accepts_nested_attributes_for :team
  
  has_one :procedures_project, dependent: :destroy
  accepts_nested_attributes_for :procedures_project,
  reject_if: :all_blank, allow_destroy: true
end
