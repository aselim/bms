class CreateTerritories < ActiveRecord::Migration
  def change
    create_table :territories do |t|
      t.decimal :code
      t.string :name

      t.timestamps null: false
    end
  end
end
