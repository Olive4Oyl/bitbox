class CreateBoxes < ActiveRecord::Migration[5.0]
  def change
    create_table :boxes do |t|
    	t.string :name
    	t.string :description
    	t.string :sub_box_level
    	t.string :sub_box_info
    	t.string :sub_box_guide
      t.timestamps
    end
  end
end
