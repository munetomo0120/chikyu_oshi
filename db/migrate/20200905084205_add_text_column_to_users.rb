class AddTextColumnToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :text, :string
  end
end
