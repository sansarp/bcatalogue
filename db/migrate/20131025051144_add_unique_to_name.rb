class AddUniqueToName < ActiveRecord::Migration
  def change
  	add_index :businesses, :name, :unique => true
  end
end
