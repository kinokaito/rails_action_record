class CreateCategories < ActiveRecord::Migration[7.1]
  def change
    create_table :categories do |t|
      t.string :category
      t.string :display_color
      t.integer :category_total

      t.timestamps
    end
  end
end
