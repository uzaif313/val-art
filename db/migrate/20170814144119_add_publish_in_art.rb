class AddPublishInArt < ActiveRecord::Migration[5.0]
  def change
  	add_column :arts, :is_publish, :boolean, default:false
  	add_column :arts, :publish_at, :datetime, default:Time.now
  end
end
