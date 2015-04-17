class CreateRules < ActiveRecord::Migration
  def change
    create_table :rules do |t|
      t.integer :scene_id
      t.integer :asset_id
      t.integer :state
      t.integer :inequality
      t.integer :inequality_value

      t.timestamps
    end
  end
end
