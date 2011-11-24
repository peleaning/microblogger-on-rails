class AddEmailUniquenessIndex < ActiveRecord::Migration
  def up
  	add_index :users, :email, :unique => true
  end

  def down
  	emove_index :users, :email
  end
end
