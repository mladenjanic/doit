class CreateDoitItems < ActiveRecord::Migration[5.0]
  def change
    create_table :doit_items do |t|
      t.string :content
      t.references :doit_list, foreign_key: true

      t.timestamps
    end
  end
end
