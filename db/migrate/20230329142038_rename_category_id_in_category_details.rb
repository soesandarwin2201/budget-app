class RenameCategoryIdInCategoryDetails < ActiveRecord::Migration[7.0]
  def change
    rename_column :category_details, :categories_id, :category_id
  end
end
