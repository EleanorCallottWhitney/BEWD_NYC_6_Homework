class CreateBlogPosts < ActiveRecord::Migration
  def change
    create_table :blog_posts do |t|
      t.string :title
      t.datetime :post_date
      t.text :post_body

      t.timestamps
    end
  end
end
