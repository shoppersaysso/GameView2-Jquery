class CreateGamesGameAttributes < ActiveRecord::Migration[5.1]
  def change
    create_table :games_game_attributes, :id => false do |t|
      t.integer :game_id
      t.integer :game_attribute_id
    end
  end
end
