puts 'cleaning DB'
Observation.destroy_all
Student.destroy_all
Classroom.destroy_all
User.destroy_all

puts 'seeds user'
jdubois = User.create!(email: 'jean.dubois@gmail.com', password: 'jeandubois13', password_confirmation: 'jeandubois13', first_name: 'Jean', last_name: 'Dubois')

puts 'seeds classroom'
ce1 = Classroom.create!(name: 'CE1', user: jdubois)

puts 'seed student'
cteissier = Student.create!(first_name: 'Caroline', last_name: 'Tessier', classroom: ce1)
fbernard = Student.create!(first_name: 'Florian', last_name: 'Bernard', classroom: ce1)
cdasilva = Student.create!(first_name: 'Carlos', last_name: 'Da Silva', classroom: ce1)
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

puts 'seed observations'
relation1 = Observation.create!(obs_date: 20210920, category: "Relation à l'autre", note: "Pleure mis en groupe avec Lucas", obs_color: "Red", student: chumbert, user: jdubois)
relation2 = Observation.create!(obs_date: 20210928, category: "Relation à l'autre", note: "Attend plusieurs minutes poru sortir de la classe", obs_color: "Grey", student: chumbert, user: jdubois)
relation3 = Observation.create!(obs_date: 20210928, category: "Relation à l'autre", note: "Est en conflit avec les autres", obs_color: "Red", student: lrodriguez, user: jdubois)
relation4 = Observation.create!(obs_date: 20211011, category: "Relation à l'autre", note: "Est réfractaire à l'apprentissage, refuse d'apprendre", obs_color: "Red", student: lrodriguez, user: jdubois)
relation5 = Observation.create!(obs_date: 20211012, category: "Relation à l'autre", note: "A envie de participer mais n'ose pas (lève la main puis ne participe pas)", obs_color: "Grey", student: slamy, user: jdubois)
relation6 = Observation.create!(obs_date: 20211129, category: "Relation à l'autre", note: "Ne participe pas, mais suit en classe", obs_color: "Green", student: slamy, user: jdubois)
expression1 = Observation.create!(obs_date: 20211102, category: "Expression", note: "Ne réagit pas aux injonctions, aux demandes orales", obs_color: "Red", student: lrodriguez, user: jdubois)
expression2 = Observation.create!(obs_date: 20211102, category: "Expression", note: "Parle à voix basse, est peu audible", obs_color: "Grey", student: slamy, user: jdubois)
expression3 = Observation.create!(obs_date: 20211025, category: "Expression", note: "Restituer oralement une leçon", obs_color: "Green", student: ieurtein, user: jdubois)
attitude1 = Observation.create!(obs_date: 20211215, category: "Attitudes corporelles", note: "A une grande fatigabilité", obs_color: "Grey", student: slamy, user: jdubois)
gestesquotidiens1 = Observation.create!(obs_date: 20211207, category: "Gestes / actes quotidiens", note: "Se repère dans l'espace avec difficulté (tableau, graphique, cahier, dictionnaire...)", obs_color: "Red", student: slamy, user: jdubois)
ecriture1 = Observation.create!(obs_date: 20211011, category: "Ecriture", note: "Ne fixe pas l'orthographe des mots", obs_color: "Red", student: gmakalu, user: jdubois)
lecture1 = Observation.create!(obs_date: 20211215, category: "Lecture", note: "Ne comprend pas l'implicite, le second degrés, le sens figuré...", obs_color: "Red", student: lrodriguez, user: jdubois)
math1 = Observation.create!(obs_date: 20211102, category: "Mathématiques", note: "Accède difficilement au calcul mental", obs_color: "Grey", student: slamy, user: jdubois)
comportement1 = Observation.create!(obs_date: 20211215, category: "Comportement", note: "A un principe de réalité erroné (la récréation dure deux semaines)", obs_color: "Grey", student: lrodriguez, user: jdubois)
environnement1 = Observation.create!(obs_date: 20211011, category: "Environnement", note: "Devoirs non-faits", obs_color: "Red", student: lrodriguez, user: jdubois)
autre1 = Observation.create!(obs_date: 20211215, category: "Autre", note: "Parents ne viennent pas aux convocations", obs_color: "Red", student: lrodriguez, user: jdubois)

puts 'done'
