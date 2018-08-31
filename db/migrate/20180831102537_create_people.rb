class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.decimal :bd
      t.string :rank
      t.string :name
      t.string :trade
      t.string :section
      t.string :base

      t.timestamps
    end
  end
end
