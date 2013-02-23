class RenameTable < ActiveRecord::Migration
  def up
    rename_table :items_categories, :categories_items
  end

  def down
    rename_table :categories_item, :items_categories
  end
end
