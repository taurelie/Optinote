puts 'cleaning DB'
User.destroy_all
Student.destroy_all

# Seed Users
puts 'seeds user'
JDubois = User.create!(email: 'jean.dubois@gmail.com', password: 'jeandubois13', password_confirmation: 'jeandubois13', first_name: 'Jean', last_name: 'Dubois')

puts 'seed student'
CTeissier = Student.create!(first_name: 'Caroline', last_name: 'Tessier', classroom: 'CE1')
FBernard = Student.create!(first_name: 'Florian', last_name: 'Bernard', classroom: 'CE1')
CDaSilva = Student.create!(first_name: 'Carlos', last_name: 'Da Silva', classroom: 'CE1')
EPetit = Student.create!(first_name: 'Elise', last_name: 'Petit', classroom: 'CE1')
GRobert = Student.create!(first_name: 'Gladys', last_name: 'Robert', classroom: 'CE1')
NRichard = Student.create!(first_name: 'Nathan', last_name: 'Richard', classroom: 'CE1')
MDurand = Student.create!(first_name: 'Maxime', last_name: 'Durand', classroom: 'CE1')
MLopez = Student.create!(first_name: 'Maya', last_name: 'Lopez', classroom: 'CE1')
SLamy = Student.create!(first_name: 'Sarah', last_name: 'Lamy', classroom: 'CE1')
CVidal = Student.create!(first_name: 'Claire', last_name: 'Vidal', classroom: 'CE1')
IEurtein = Student.create!(first_name: 'Irina', last_name: 'Eurtein', classroom: 'CE1')
KWeber = Student.create!(first_name: 'Karine', last_name: 'Weber', classroom: 'CE1')
LGranjean = Student.create!(first_name: 'Léa', last_name: 'granjean', classroom: 'CE1')
CHumbert = Student.create!(first_name: 'Christophe', last_name: 'Humbert', classroom: 'CE1')
LRodriguez = Student.create!(first_name: 'Lucas', last_name: 'Rodriguez', classroom: 'CE1')
GMakalu = Student.create!(first_name: 'Gerald', last_name: 'Makalu', classroom: 'CE1')
ASalem = Student.create!(first_name: 'Aziz', last_name: 'Salem', classroom: 'CE1')
SGilly = Student.create!(first_name: 'Sylvain', last_name: 'Gilly', classroom: 'CE1')
FBouzian = Student.create!(first_name: 'Fatia', last_name: 'Bouzian', classroom: 'CE1')
TDeccicio = Student.create!(first_name: 'Timéo', last_name: 'Deccicio', classroom: 'CE1')

puts 'done'
