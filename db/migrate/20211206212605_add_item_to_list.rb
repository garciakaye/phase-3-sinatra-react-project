class AddItemToList < ActiveRecord::Migration[6.1]
  def change
    add_column :to_do_items, :list_id, :integer
  end
end
