class AddImageToBoxes < ActiveRecord::Migration[5.0]
  def change
    add_column :boxes, :image, :string
  end
end
