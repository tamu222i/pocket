class CreateItemCategory < ActiveRecord::Migration
  def up
    create_table :items_categories,:id => false do |t|
      t.integer :item_id
      t.integer :category_id
    end

  end

  def down
    drop_table :items_categories
  end
end
