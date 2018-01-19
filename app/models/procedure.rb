class Procedure < ActiveRecord::Base
  validates :name, :description, presence:true
  
  has_many :pratices_procedures, dependent: :destroy
  accepts_nested_attributes_for :pratices_procedures,
  reject_if: :all_blank, allow_destroy: true
  
  has_many :pratices, through: :pratices_procedures
  accepts_nested_attributes_for :pratices,
  reject_if: :all_blank, allow_destroy: true
  
  has_many :procedures_projects
end
