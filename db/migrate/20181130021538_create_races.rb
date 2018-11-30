class CreateRaces < ActiveRecord::Migration[5.1]
  def change
    create_table :races do |t|
      t.integer :name
      t.integer :event_id
      t.integer :year_id
      t.integer :location_id

      t.timestamps
    end
  end
end
