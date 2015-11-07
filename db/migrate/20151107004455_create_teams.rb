class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :FullName
      t.date :BDate
      t.text :Address
      t.string :Telephone

      t.timestamps null: false
    end
  end
end
