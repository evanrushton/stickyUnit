class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
    	t.integer :unit_id
    	t.integer :evidence_id
    	t.integer :level
    	t.string :goal
      t.timestamps
    end
  end
end
