class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.string :name
      t.string :icon
      t.references :users, null: false, foreign_key: true
      
      t.timestamps
    end
    rename_column :categories, :users_id, :user_id
  end
end
