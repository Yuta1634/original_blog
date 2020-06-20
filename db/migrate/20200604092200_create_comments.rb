class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.text :text
      t.integer :post_id, null: false
      t.timestamps
    end
  end
end
