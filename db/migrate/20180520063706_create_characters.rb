class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.binary :image

      t.timestamps
    end
  end
end
