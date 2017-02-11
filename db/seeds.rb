require 'random_data'

15.times do
  Topic.create!(
    name: RandomData.random_sentence,
    description: RandomData.random_paragraph
  )
end
topics = Topic.all


50.times do

  Post.create!(
    topic: topics.sample,
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

5.times do

  SponsoredPost.create!(
    topic: topics.sample,
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph,
    price: 10
  )
end

puts "Seed finished"
puts "#{SponsoredPost.count} sponsored posts created"
puts "#{Topic.count} topics created"
puts"#{Post.count} posts created"
puts "#{Comment.count} comments created"
