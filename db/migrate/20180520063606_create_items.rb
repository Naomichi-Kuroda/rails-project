class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :value
      t.binary :image

      t.timestamps
    end
  end
end
