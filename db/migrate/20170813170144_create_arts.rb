class CreateArts < ActiveRecord::Migration[5.0]
  def change
    create_table :arts do |t|
      t.attachment :image
      t.references :user, foreign_key: true
      t.text :descrption

      t.timestamps
    end
  end
end
