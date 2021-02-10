class CreateForums < ActiveRecord::Migration[6.0]
  def change
    create_table :forums do |t|
      t.string :question
      t.text :description
      t.integer :user_id
      t.integer :topic_id

      t.timestamps
    end
  end
end
