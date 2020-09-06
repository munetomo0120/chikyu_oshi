class AddCountryIdColumnToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :country_id, :integer
  end
end
