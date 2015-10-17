class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :posts_tags, :posts_id, :post_id
    rename_column :posts_tags, :tags_id, :tag_id
  end
end
