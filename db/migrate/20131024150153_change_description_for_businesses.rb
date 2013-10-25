class ChangeDescriptionForBusinesses < ActiveRecord::Migration
  	change_table :businesses do |t|  
        t.change :description, :text 
    end
end
