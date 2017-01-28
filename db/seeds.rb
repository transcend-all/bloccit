require 'random_data'

50.times do

  Post.create!(
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph
  )
end

puts "#{Post.count}"
Post.find_or_create_by(
  title: "I want a million dollars",
  body: "You and everybody else"
)
puts "#{Post.count}"

posts = Post.all

100.times do
  Comment.create!(
    post: posts.sample,
    body: RandomData.random_paragraph
  )
end

puts "#{Comment.count}"
Comment.find_or_create_by(
  body: "What are you looking at?"
)
puts "#{Comment.count}"

puts "Seed finished"
puts"#{Post.count} posts created"
puts "#{Comment.count} comments created"
