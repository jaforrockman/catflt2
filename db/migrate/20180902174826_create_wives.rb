class CreateWives < ActiveRecord::Migration[5.2]
  def change
    create_table :wives do |t|
      t.string :person_id
      t.string :name
      t.date :dob
      t.date :dom

      t.timestamps
    end
  end
end
