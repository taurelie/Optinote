puts 'cleaning DB'
User.destroy_all
Student.destroy_all

# Seed Users
puts 'seeds user'
Jean = User.create!(email: 'jean.dubois@gmail.com', password: 'jeandubois13', password_confirmation: 'jeandubois13', first_name: 'Jean', last_name: 'Dubois')
