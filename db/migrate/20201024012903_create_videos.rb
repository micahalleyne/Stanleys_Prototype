class CreateVideos < ActiveRecord::Migration[6.0]
  def change
    create_table :videos do |t|
      t.string :title
      t.string :attachment
      t.integer :user_id
      t.integer :topic_id

      t.timestamps
    end
  end
end
