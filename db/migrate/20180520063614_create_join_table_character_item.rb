class CreateJoinTableCharacterItem < ActiveRecord::Migration[5.2]
  def change
    create_join_table :characters, :items do |t|
      # t.index [:character_id, :item_id]
      # t.index [:item_id, :character_id]
    end
  end
end
