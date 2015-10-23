class DropTables < ActiveRecord::Migration
  def change
    drop_table :tags
    drop_table :posts_tags
  end
end
