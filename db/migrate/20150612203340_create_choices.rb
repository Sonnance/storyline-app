class CreateChoices < ActiveRecord::Migration
  def change
    create_table :choices do |t|
      t.string 	 :title
      t.text 	 :description
      t.integer  :position
      t.integer  :rule_id

      t.timestamps
    end
  end
end
