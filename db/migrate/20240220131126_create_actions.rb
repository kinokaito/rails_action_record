class CreateActions < ActiveRecord::Migration[7.1]
  def change
    create_table :actions do |t|
      t.time :start_time
      t.time :end_time
      t.string :category
      t.date :day
      t.integer :total_time

      t.timestamps
    end
  end
end
