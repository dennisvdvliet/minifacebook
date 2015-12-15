class CreateUsersTable < ActiveRecord::Migration
  def change
    create_table :users do |table|
        table.string :email
        table.string :name
        table.string :password
        table.string :city
        table.string :gender
        table.string :date_of_birth
    end
  end
end
