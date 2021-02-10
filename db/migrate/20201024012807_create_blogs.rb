class CreateBlogs < ActiveRecord::Migration[6.0]
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :content
      t.integer :user_id
      t.integer :topic_id

      t.timestamps
    end
  end
end
