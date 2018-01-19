class Unconformity < ActiveRecord::Base
  validates :name, :description, presence:true
  belongs_to :audit
  has_one :corrective_action, dependent: :destroy
end
