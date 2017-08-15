class AddTitleInArts < ActiveRecord::Migration[5.0]
  def change
  	add_column :arts, :title, :string, default:"", null: false
  end
end
