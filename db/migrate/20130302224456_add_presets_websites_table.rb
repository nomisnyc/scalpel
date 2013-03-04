class AddPresetsWebsitesTable < ActiveRecord::Migration
  def change
    create_table :presets_websites, :id => false do |t|
      t.integer :preset_id
      t.integer :webstie_id
    end
  end
end
