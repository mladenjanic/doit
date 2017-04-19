class AddCompletedAtToDoitItems < ActiveRecord::Migration[5.0]
  def change
    add_column :doit_items, :completed_at, :datetime
  end
end
