class AddHeaderImageColumnToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :header_image, :string
  end
end
