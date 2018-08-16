class CreateLrcs < ActiveRecord::Migration[5.2]
  def change
    create_table :lrcs do |t|
      t.decimal :bd
      t.string :rank
      t.string :name
      t.string :trade
      t.date :closed
      t.date :issued
      t.decimal :iv_no
      t.decimal :reg_sl
      t.decimal :self
      t.decimal :wife

      t.timestamps
    end
  end
end
