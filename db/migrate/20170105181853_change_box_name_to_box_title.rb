class ChangeBoxNameToBoxTitle < ActiveRecord::Migration[5.0]
  def change
  	rename_column :boxes, :name, :title
  end
end
