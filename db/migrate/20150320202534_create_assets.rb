class CreateAssets < ActiveRecord::Migration
  def change
    create_table :assets do |t|
      t.integer :asset_type
      t.string :name
      t.text :description
      t.integer :durability
      t.integer :story_id

      t.timestamps
    end
  end
end
