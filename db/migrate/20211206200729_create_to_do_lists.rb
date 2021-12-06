class CreateToDoLists < ActiveRecord::Migration[6.1]
  def change
    create_table :to_do_lists do |t|
      t.timestamps
      t.string :title
    end
  end
end
