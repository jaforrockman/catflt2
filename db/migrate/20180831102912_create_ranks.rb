class CreateRanks < ActiveRecord::Migration[5.2]
  def change
    create_table :ranks do |t|
      t.decimal :sl_no
      t.string :title

      t.timestamps
    end
  end
end
