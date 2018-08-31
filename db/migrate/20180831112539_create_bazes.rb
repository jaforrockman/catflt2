class CreateBazes < ActiveRecord::Migration[5.2]
  def change
    create_table :bazes do |t|
      t.string :title

      t.timestamps
    end
  end
end
