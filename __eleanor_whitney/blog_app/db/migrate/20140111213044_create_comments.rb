class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :email
      t.text :content
      t.references :blog_post

      t.timestamps
    end
  end
end
