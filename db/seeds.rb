# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Post.destroy_all

users = User.create([
  {email: "email", user_name: "User Name", password_digest: "password", industry: "industry", company: "company", title: "title"}
  ])


posts = Post.create([
  {title: "The first post", boss_name: "Boss Name", boss_company: "Boss Company", boss_title: "Boss Title", body: "My boss made me do this bull shit the other day... OMG"}
  ])
