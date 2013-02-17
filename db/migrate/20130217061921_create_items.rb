class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.timestamp :use_at
      t.integer :total

      t.timestamps
    end
  end
end
