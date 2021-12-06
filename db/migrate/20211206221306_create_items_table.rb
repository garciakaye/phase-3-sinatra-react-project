class CreateItemsTable < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.timestamps
      t.string :name
      t.string :notes
      t.integer "list_id"
    end
  end
end
