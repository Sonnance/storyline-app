class CreateScenes < ActiveRecord::Migration
  def change
    create_table :scenes do |t|
      t.string :title
      t.text :description
      t.integer :story_id

      t.timestamps
    end
  end
end
