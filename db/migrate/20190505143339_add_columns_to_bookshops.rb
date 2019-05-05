class AddColumnsToBookshops < ActiveRecord::Migration[5.1]
  def change
    add_column :bookshops, :description, :text
  end
end
