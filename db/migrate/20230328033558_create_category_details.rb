class CreateCategoryDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :category_details do |t|
      t.string :name
      t.integer :amount
      t.integer :author_id
      t.references :categories, null: false, foreign_key: true

      t.timestamps
    end
    add_index :category_details, :author_id
    add_foreign_key :category_details, :users, column: :author_id
  end
end
