class User < ActiveRecord::Base
  has_many :group_users
  has_many :groups, :through => :group_users
end

class Group < ActiveRecord::Base
  has_many :group_users
  has_many :users, :through => :group_users

end


class GroupUser < ActiveRecord::Base
  belongs_to :group
  belongs_to :user
end
