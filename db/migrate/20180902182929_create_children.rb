class CreateChildren < ActiveRecord::Migration[5.2]
  def change
    create_table :children do |t|
      t.string :person_id
      t.string :name
      t.date :dob

      t.timestamps
    end
  end
end
