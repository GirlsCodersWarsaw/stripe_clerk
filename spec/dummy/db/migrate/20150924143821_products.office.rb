# This migration comes from office (originally 20131226151332)
class Products < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.float       :price      , :null => false
      t.string      :name       , :null => false
      t.string      :link        
      t.text        :description , :default => ""
      t.text        :summary      , :default => ""
      t.attachment  :main_picture
      t.attachment  :extra_picture
      t.boolean     :online ,       :default => false
      t.float       :cost ,         :default => 0.0
      t.float       :weight ,       :default => 0.1
      t.string      :ean,           :default => ""
      t.float       :tax,           :default => 0.0
      t.integer     :inventory ,    :default => 0
      t.integer     :stock_level ,  :default => 0
      t.string      :properties,    :default => ""
      t.string      :scode,         :default => ""
      t.date        :deleted_on
      t.references  :product,        index: true
      t.references  :category,       index: true
      t.references  :supplier,       index: true
      t.timestamps
    end
    add_index :products, :link
  end
end
