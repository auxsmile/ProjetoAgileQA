class Role < ActiveRecord::Base
  has_many :member_roles
end
