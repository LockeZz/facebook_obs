class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products, id: :uuid do |t|
      t.string :name 

      t.timestamps
    end
    add_monetize :products, :price, currency: {present: true}
  end
end
