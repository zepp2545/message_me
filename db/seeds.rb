# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(username: "abc", password: "k25458565")
User.create(username: "bcd", password: "k25458565")
User.create(username: "cde", password: "k25458565")
User.create(username: "def", password: "k25458565")
User.create(username: "efg", password: "k25458565")

Message.create(body: "hello I'm #{User.first.username}", user_id: User.first.id )
Message.create(body: "hello I'm #{User.find_by(id: 2).username}", user_id: User.find_by(id: 2).id)
Message.create(body: "hello I'm #{User.find_by(id: 3).username}", user_id: User.find_by(id: 3).id)
Message.create(body: "hello I'm #{User.find_by(id: 4).username}", user_id: User.find_by(id: 4).id)
Message.create(body: "hello I'm #{User.find_by(id: 5).username}", user_id: User.find_by(id: 5).id)


