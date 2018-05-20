class CreateItemComments < ActiveRecord::Migration[5.2]
  def change
    create_table :item_comments do |t|
      t.references :item, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :status
      t.text :body

      t.timestamps
    end
  end
end
