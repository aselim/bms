class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :Territory
      t.date :PODate
      t.decimal :Number
      t.string :Customer
      t.string :Type
      t.string :Name
      t.string :PM
      t.string :Owner

      t.timestamps null: false
    end
  end
end
