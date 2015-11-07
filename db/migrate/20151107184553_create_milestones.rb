class CreateMilestones < ActiveRecord::Migration
  def change
    create_table :milestones do |t|
      t.text :name
      t.date :exp_date
      t.date :act_date
      t.text :resources
      t.references :project, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
