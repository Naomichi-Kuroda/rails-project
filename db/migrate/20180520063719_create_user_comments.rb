class CreateUserComments < ActiveRecord::Migration[5.2]
  def change
    create_table :user_comments do |t|
      t.integer :character_id
      t.string :name
      t.text :body
      t.boolean :deleted

      t.timestamps
    end
  end
end
