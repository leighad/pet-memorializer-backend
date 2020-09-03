# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

tankie = Pet.create(name: 'Tankie', kind: 'English Bulldog', gender: 'female', born: 'April, 24 2012', bio: 'A lovable little meatball who made everyone smile.')

beach = Memory.create(title: 'Perfect Beach Day', date: Date.today, description: 'Every day with you is a perfect beach day! I have the best memories of your happy wrinkle face smiling away while you do your swimming little girl. I know the beaches will be perfect for you in heaven.', favorite: true, pet_id: 1)
