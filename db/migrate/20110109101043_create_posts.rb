class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.references :category
      t.string :title
      t.text :text
      t.string :source
      t.string :tags

      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end
