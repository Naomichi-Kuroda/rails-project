class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :age
      t.string :address
      t.date :birthday
      t.boolean :flg_over_limit

      t.timestamps
    end
  end
end
