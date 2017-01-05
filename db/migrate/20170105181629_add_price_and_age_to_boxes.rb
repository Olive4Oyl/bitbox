class AddPriceAndAgeToBoxes < ActiveRecord::Migration[5.0]
  def change
    add_column :boxes, :price, :integer
    add_column :boxes, :age_recommendation, :integer
  end
end
