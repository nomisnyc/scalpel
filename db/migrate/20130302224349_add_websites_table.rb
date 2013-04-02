class AddWebsitesTable < ActiveRecord::Migration
 def change
 	 create_table :websites do |t|
      t.string :name
      t.string :image_url
      t.string :url
      t.string :nokogiri_selector
      t.string :nokogiri_link_selector
      t.timestamps
  	end
  end
end
