class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.references :user, index: true
      t.references :blog, index: true
      t.string :title
      t.string :content

      t.timestamps
    end
  end
end
