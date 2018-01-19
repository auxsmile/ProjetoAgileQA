class Pratice < ActiveRecord::Base
  has_many :pratices_procedures, dependent: :destroy
  has_many :procedures, through: :pratices_procedures
end
