class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :body
      t.integer :commentor_id
      t.integer :user_race_id

      t.timestamps
    end
  end
end
