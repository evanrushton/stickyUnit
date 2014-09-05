class CreateEvidencesAndAssessments < ActiveRecord::Migration
  def change
    create_table :evidences do |t|
    	t.integer :unit_id
      t.integer :depth
    	t.string :evidence
      t.timestamps
    end

    create_table :assessments do |t|
    	t.integer :unit_id
    	t.integer :rigor
    	t.string :assessment
      t.timestamps
    end

    create_table :assessments_evidences, id: false do |t|
      t.belongs_to :assessment
      t.belongs_to :evidence
    end
  end
end
