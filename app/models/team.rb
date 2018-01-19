class Team < ActiveRecord::Base
  belongs_to :project
  has_many :member_roles, dependent: :destroy
  has_many :members, through: :member_roles
  has_many :roles, through: :member_roles
  
  accepts_nested_attributes_for :member_roles,
  reject_if: :all_blank, allow_destroy: true
  
end
