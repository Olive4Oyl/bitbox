class AddSubAndShippingToSubscriptions < ActiveRecord::Migration[5.0]
  def change
    add_column :subscriptions, :subtitle, :string
    add_column :subscriptions, :shipping_info, :string
  end
end
