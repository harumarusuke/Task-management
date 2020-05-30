# coding: utf-8

User.create!( name: "管理者",
              email: "sample@email.com",
              password: "password",
              password_confirmation: "password",
              admin:true)
              
99.times do |n|
  name  = Faker::Name.name
  email = "sample-#{n+1}@email.com"
  password = "password"
  User.create!(name: name,
               email: email,
               password: password,
               password_confirmation: password)
end
puts "Users Created"

admin_user = User.first
guest_user = User.find(2)


50.times do |n|
  title  = "タスク#{n+1}"
  note = "タスク詳細#{n+1}"
  admin_user.tasks.create!(title: title,note: note)
  guest_user.tasks.create!(title: title,note: note)
end

puts "Tasks Created"