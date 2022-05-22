# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Delete existing articles..."
Article.delete_all

puts "Add 10 random Pokemon articles..."
10.times do
  title = Faker::Games::Pokemon.name
  content = Faker::Quote.most_interesting_man_in_the_world
  new_article = Article.new(title: title, content: content)
  new_article.save
  puts "Title: #{title}"
  puts "Content: #{content}"
  puts "...was added to the DB"
  puts ""
end
