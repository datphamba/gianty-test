class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.text :headline
      t.integer :display_order
      t.text :url
      t.integer :like_count
      t.references :article, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
