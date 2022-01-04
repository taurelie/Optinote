puts 'cleaning DB'
User.destroy_all
Classroom.destroy_all
Student.destroy_all


# Seed Users
puts 'seeds user'
jdubois = User.create!(email: 'jean.dubois@gmail.com', password: 'jeandubois13', password_confirmation: 'jeandubois13', first_name: 'Jean', last_name: 'Dubois')

puts 'seeds classroom'
ce1 = Classroom.create!(name: 'CE1', user: jdubois)

puts 'seed student'
cteissier = Student.create!(first_name: 'Caroline', last_name: 'Tessier', classroom: ce1)
fbernard = Student.create!(first_name: 'Florian', last_name: 'Bernard', classroom: ce1)
cdaSilva = Student.create!(first_name: 'Carlos', last_name: 'Da Silva', classroom: ce1)
epetit = Student.create!(first_name: 'Elise', last_name: 'Petit', classroom: ce1)
grobert = Student.create!(first_name: 'Gladys', last_name: 'Robert', classroom: ce1)
nrichard = Student.create!(first_name: 'Nathan', last_name: 'Richard', classroom: ce1)
mdurand = Student.create!(first_name: 'Maxime', last_name: 'Durand', classroom: ce1)
mlopez = Student.create!(first_name: 'Maya', last_name: 'Lopez', classroom: ce1)
slamy = Student.create!(first_name: 'Sarah', last_name: 'Lamy', classroom: ce1)
cvidal = Student.create!(first_name: 'Claire', last_name: 'Vidal', classroom: ce1)
ieurtein = Student.create!(first_name: 'Irina', last_name: 'Eurtein', classroom: ce1)
kweber = Student.create!(first_name: 'Karine', last_name: 'Weber', classroom: ce1)
lgranjean = Student.create!(first_name: 'Léa', last_name: 'granjean', classroom: ce1)
chumbert = Student.create!(first_name: 'Christophe', last_name: 'Humbert', classroom: ce1)
lrodriguez = Student.create!(first_name: 'Lucas', last_name: 'Rodriguez', classroom: ce1)
gmakalu = Student.create!(first_name: 'Gerald', last_name: 'Makalu', classroom: ce1)
asalem = Student.create!(first_name: 'Aziz', last_name: 'Salem', classroom: ce1)
sgilly = Student.create!(first_name: 'Sylvain', last_name: 'Gilly', classroom: ce1)
fbouzian = Student.create!(first_name: 'Fatia', last_name: 'Bouzian', classroom: ce1)
tdeccicio = Student.create!(first_name: 'Timéo', last_name: 'Deccicio', classroom: ce1)

puts 'done'
