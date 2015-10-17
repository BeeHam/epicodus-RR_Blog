class CreatePostsTags < ActiveRecord::Migration
  def change
    create_table :posts_tags do |t|
      t.column :posts_id, :integer
      t.column :tags_id, :integer
    end
  end
end
