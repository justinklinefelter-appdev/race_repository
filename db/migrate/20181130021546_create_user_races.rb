class CreateUserRaces < ActiveRecord::Migration[5.1]
  def change
    create_table :user_races do |t|
      t.integer :user_id
      t.integer :race_id
      t.time :time
      t.string :body
      t.string :overall_place
      t.string :age_group_place

      t.timestamps
    end
  end
end
