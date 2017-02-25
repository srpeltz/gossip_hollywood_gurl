class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :boss_name
      t.string :boss_company
      t.string :boss_title
      t.text :body
      t.integer :upvote
      t.integer :downvote
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
