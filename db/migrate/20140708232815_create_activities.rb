class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
    	t.integer :assessment_id
    	t.string :activity
      t.timestamps
    end
  end
end
