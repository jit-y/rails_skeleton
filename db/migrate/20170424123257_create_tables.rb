class CreateTables < ActiveRecord::Migration[5.0]
  def change
    create_table :genres do |t|
      t.string :name, null: false
    end
    create_table :articles do |t|
      t.references :genre, null: false, foreign_key: true
      t.string :title, null: false
      t.text :content, null: false
      t.timestamps
    end
    create_table :tags do |t|
      t.string :name, null: false
      t.timestamps
    end
    create_table :article_tags do |t|
      t.references :article, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true
      t.timestamps
    end
  end
end
