# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
users = User.create([
  {email: "email@test.com", user_name: "User Name Test", password_digest: "password", industry: "industry test", company: "company test", title: "title test"}
  ])

Post.destroy_all
posts = Post.create([
  {title: "The first post", boss_name: "Boss Name test", boss_company: "Boss Company test", boss_title: "Boss Title test", body: "My boss made me do this bull shit the other day... OMG"}
  ])
