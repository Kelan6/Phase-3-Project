class CreateUsersTable < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.boolean :is_critic
      t.string :username
      t.string :password
    end
  end
end
