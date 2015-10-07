# This migration comes from office (originally 20131226144134)
class Orders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string      :number
      t.string      :note,     :default => ""
      t.string      :email
      t.date        :ordered_on
      t.date        :paid_on
      t.date        :canceled_on
      t.date        :shipped_on
      t.string      :payment_type
      t.string      :payment_info
      t.string      :shipment_type
      t.string      :shipment_info
      t.float       :shipment_price , :default => 0
      t.float       :shipment_tax   , :default => 0
      t.string      :address

      t.timestamps
    end
  end
end
