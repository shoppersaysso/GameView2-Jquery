# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(email: "sara@sara.com", password: "password", password_confirmation: "password", gameview_level: 3)

Game.create(title: 'StarCraft: Remastered', developer: "Blizzard Entertainment", user_id: 1, game_attributes_attributes: [genre: 'Science Fiction', esrb_rating: 'Teen', multiplayer: true])

Review.create(title: 'Amazing Gameplay!', content: 'Another great offering from Blizzard and true to the franchise. The visuals are stunning. 4 stars!', game_id: 1, user_id: 1)
Review.create(title: 'Visually stunning', content: "Can't wait to try the online multiplayer mode!", game_id: 1, user_id: 1)
Review.create(title: 'Disappointing', content: "I preferred the last game. Controls are clunky!", game_id: 1, user_id: 1)
