class CreateToDoItems < ActiveRecord::Migration[6.1]
  def change
    create_table :to_do_items do |t|
      t.timestamps
      t.string :name
      t.string :notes
    end
  end
end
