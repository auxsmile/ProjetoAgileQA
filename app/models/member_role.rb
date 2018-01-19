class MemberRole < ActiveRecord::Base
  belongs_to :member
  belongs_to :role
  belongs_to :team
  has_many :projects, through: :team
end
