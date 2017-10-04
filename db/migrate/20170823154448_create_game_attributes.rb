class CreateGameAttributes < ActiveRecord::Migration[5.1]
  def change
    create_table :game_attributes do |t|
      t.string :genre
      t.string :esrb_rating
      t.boolean :multiplayer

    end
  end
end
