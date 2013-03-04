class AddPresetsTable < ActiveRecord::Migration
 def change
 	 create_table :presets do |t|
 	 		t.string :name
 	 		t.integer :user_id
 	 		t.timestamps
 		end
  end
end
