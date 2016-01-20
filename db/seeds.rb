User.destroy_all
Project.destroy_all

users = []

(1..5).each do |i|
  users << User.create(
    name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    user_name: Faker::Internet.user_name,
    email: "client_#{i}@mail.com",
    password: 'password',
    photo: 'foto'
  )
end


projects = []

50.times do |r|
  projects << Project.create(
    title: Faker::Internet.domain_word,
    user: users.sample
  )
end