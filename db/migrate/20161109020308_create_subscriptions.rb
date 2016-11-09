class CreateSubscriptions < ActiveRecord::Migration[5.0]
  def change
    create_table :subscriptions do |t|
    	t.integer :subscriber_id 
    	t.integer :box_id
    	t.string :level
      t.timestamps
    end
  end
end
