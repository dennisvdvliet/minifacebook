class CreateGroupsUsersTable < ActiveRecord::Migration
  def change
    create_table :groups_users do |table|
        table.integer :user_id
        table.integer :group_id
    end
  end
end
