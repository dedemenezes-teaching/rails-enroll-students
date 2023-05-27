puts 'Cleaning DB...'
Student.destroy_all
Course.destroy_all

puts 'Populating DB...'

Student.create!(
  username: 'carla',
  email: 'carla@lewagon.com'
)
Student.create!(
  username: 'andre',
  email: 'andre@lewagon.com'
)

Course.create!([
  { name: 'Web Dev', description: 'Best web dev course' },
  { name: 'Data Science', description: 'Best data science course' },
  { name: 'Data Analytics', description: 'Best data analytics course' }
])

puts 'Finished zo/'
