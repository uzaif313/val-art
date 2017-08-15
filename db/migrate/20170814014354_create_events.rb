class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :title
      t.references :art, foreign_key: true
      t.references :user, foreign_key: true
      t.datetime :start_time
      t.datetime :end_time
      t.integer :event_type

      t.timestamps
    end
  end
end
