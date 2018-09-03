class CreateLrcs < ActiveRecord::Migration[5.2]
  def change
    create_table :lrcs do |t|
      t.string :person_id
      t.string :closed
      t.string :issued
      t.string :iv_no
      t.string :reg_sl

      t.timestamps
    end
  end
end
