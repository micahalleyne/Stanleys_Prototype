class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :body
      t.integer :user_id
      t.integer :blog_id
      t.integer :song_id
      t.integer :video_id
      t.integer :forum_id

      t.timestamps
    end
  end
end
