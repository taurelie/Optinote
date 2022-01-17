puts 'cleaning DB'
Observation.destroy_all
Student.destroy_all
Classroom.destroy_all
User.destroy_all

puts 'seeds img avatars'
img_caroline = URI.open('https://res.cloudinary.com/dowgjinna/image/upload/v1641471950/WAGON/Caroline_hveiv2.jpg')
img_florian = URI.open('https://res.cloudinary.com/dowgjinna/image/upload/v1641471951/WAGON/Florian_kp96z3.jpg')
img_carlos = URI.open('https://res.cloudinary.com/dowgjinna/image/upload/v1641471950/WAGON/Carlos_vaymrg.jpg')
img_isabelle = URI.open('https://res.cloudinary.com/dowgjinna/image/upload/v1641552467/WAGON/Isabelle_s98zgg.jpg')
img_gladys = URI.open('https://res.cloudinary.com/dowgjinna/image/upload/v1642088116/WAGON/Gladys_uk4hy5.jpg')
img_nathan = URI.open('https://res.cloudinary.com/dowgjinna/image/upload/v1641471951/WAGON/Nathan_njvrdl.jpg')
img_maxime = URI.open('https://res.cloudinary.com/dowgjinna/image/upload/v1641471951/WAGON/Maxime_y0bt3h.jpg')
img_maya = URI.open('https://res.cloudinary.com/dowgjinna/image/upload/v1641471951/WAGON/Maya_fmkpdz.jpg')
img_sarah = URI.open('https://res.cloudinary.com/dowgjinna/image/upload/v1641552467/WAGON/Sarah_ms6exd.jpg')
img_claire = URI.open('https://res.cloudinary.com/dowgjinna/image/upload/v1641471950/WAGON/Claire_cfvyhw.jpg')
img_irina = URI.open('https://res.cloudinary.com/dowgjinna/image/upload/v1641471951/WAGON/Irina_aoomaw.jpg')
img_karine = URI.open('https://res.cloudinary.com/dowgjinna/image/upload/v1641471951/WAGON/Karine_qwqyll.jpg')
img_lea = URI.open('https://res.cloudinary.com/dowgjinna/image/upload/v1641471951/WAGON/L%C3%A9a_ytzhwd.jpg')
img_christophe = URI.open('https://res.cloudinary.com/dowgjinna/image/upload/v1641471950/WAGON/Christophe_cnldbq.jpg')
img_lucas = URI.open('https://res.cloudinary.com/dowgjinna/image/upload/v1641471951/WAGON/Lucas_tmtpnw.jpg')
img_gerald = URI.open('https://res.cloudinary.com/dowgjinna/image/upload/v1641471951/WAGON/Gerald_gwpn42.jpg')
img_aziz = URI.open('https://res.cloudinary.com/dowgjinna/image/upload/v1641471950/WAGON/Aziz_teue97.jpg')
img_sylvain = URI.open('https://res.cloudinary.com/dowgjinna/image/upload/v1641471952/WAGON/Sylvain_wmj8jh.jpg')
img_fatia = URI.open('https://res.cloudinary.com/dowgjinna/image/upload/v1642088117/WAGON/Fatia_otprrp.jpg')
img_timeo = URI.open('https://res.cloudinary.com/dowgjinna/image/upload/v1641471952/WAGON/Tim%C3%A9o_qfa1b0.jpg')

puts 'seeds user'
vrebeix = User.create!(email: 'valentin.rebeix@coursozanam.fr', password: '123456789', password_confirmation: '123456789', first_name: 'Valentin', last_name: 'Rebeix', admin: true)

puts 'seeds classroom'
ce1 = Classroom.create!(name: 'CE1', user: vrebeix)

puts 'seed student'
cteissier = Student.create!(first_name: 'Caroline', last_name: 'Tessier', classroom: ce1)
cteissier.photo.attach(io: img_caroline, filename: 'Caroline_hveiv2.jpg', content_type: 'image/jpg')

fbernard = Student.create!(first_name: 'Florian', last_name: 'Bernard', classroom: ce1)
fbernard.photo.attach(io: img_florian, filename: 'Florian_kp96z3.jpg', content_type: 'image/jpg')

cdasilva = Student.create!(first_name: 'Carlos', last_name: 'Da Silva', classroom: ce1)
cdasilva.photo.attach(io: img_carlos, filename: 'Carlos_vaymrg.jpg', content_type: 'image/jpg')

ipetit = Student.create!(first_name: 'Isabelle', last_name: 'Petit', classroom: ce1)
ipetit.photo.attach(io: img_isabelle, filename: 'Isabelle_s98zgg', content_type: 'image/jpg')

grobert = Student.create!(first_name: 'Gladys', last_name: 'Robert', classroom: ce1)
grobert.photo.attach(io: img_gladys, filename: 'Gladys_uk4hy5.jpg', content_type: 'image/jpg')

nrichard = Student.create!(first_name: 'Nathan', last_name: 'Richard', classroom: ce1)
nrichard.photo.attach(io: img_nathan, filename: 'Nathan_njvrdl.jpg', content_type: 'image/jpg')

mdurand = Student.create!(first_name: 'Maxime', last_name: 'Durand', classroom: ce1)
mdurand.photo.attach(io: img_maxime, filename: 'Maxime_y0bt3h.jpg', content_type: 'image/jpg')

mlopez = Student.create!(first_name: 'Maya', last_name: 'Lopez', classroom: ce1)
mlopez.photo.attach(io: img_maya, filename: 'Maya_fmkpdz.jpg', content_type: 'image/jpg')

slamy = Student.create!(first_name: 'Sarah', last_name: 'Lamy', classroom: ce1)
slamy.photo.attach(io: img_sarah, filename: 'Sarah_ms6exd', content_type: 'image/jpg')

cvidal = Student.create!(first_name: 'Claire', last_name: 'Vidal', classroom: ce1)
cvidal.photo.attach(io: img_claire, filename: 'Claire_cfvyhw.jpg', content_type: 'image/jpg')

ieurtein = Student.create!(first_name: 'Irina', last_name: 'Eurtein', classroom: ce1)
ieurtein.photo.attach(io: img_irina, filename: 'Irina_aoomaw.jpg', content_type: 'image/jpg')

kweber = Student.create!(first_name: 'Karine', last_name: 'Weber', classroom: ce1)
kweber.photo.attach(io: img_karine, filename: 'Karine_qwqyll.jpg', content_type: 'image/jpg')

lgranjean = Student.create!(first_name: 'Léa', last_name: 'granjean', classroom: ce1)
lgranjean.photo.attach(io: img_lea, filename: 'Léa_ytzhwd.jpg', content_type: 'image/jpg')

chumbert = Student.create!(first_name: 'Christophe', last_name: 'Humbert', classroom: ce1)
chumbert.photo.attach(io: img_christophe, filename: 'Christophe_cnldbq.jpg', content_type: 'image/jpg')

lrodriguez = Student.create!(first_name: 'Lucas', last_name: 'Rodriguez', classroom: ce1)
lrodriguez.photo.attach(io: img_lucas, filename: 'Lucas_tmtpnw.jpg', content_type: 'image/jpg')

gmakalu = Student.create!(first_name: 'Gerald', last_name: 'Makalu', classroom: ce1)
gmakalu.photo.attach(io: img_gerald, filename: 'Gerald_gwpn42.jpg', content_type: 'image/jpg')

asalem = Student.create!(first_name: 'Aziz', last_name: 'Salem', classroom: ce1)
asalem.photo.attach(io: img_aziz, filename: 'Aziz_teue97.jpg', content_type: 'image/jpg')

sgilly = Student.create!(first_name: 'Sylvain', last_name: 'Gilly', classroom: ce1)
sgilly.photo.attach(io: img_sylvain, filename: 'Sylvain_wmj8jh.jpg', content_type: 'image/jpg')

fbouzian = Student.create!(first_name: 'Fatia', last_name: 'Bouzian', classroom: ce1)
fbouzian.photo.attach(io: img_fatia, filename: 'Fatia_otprrp.jpg', content_type: 'image/jpg')

tdeccicio = Student.create!(first_name: 'Timéo', last_name: 'Deccicio', classroom: ce1)
tdeccicio.photo.attach(io: img_timeo, filename: 'Timéo_qfa1b0.jpg', content_type: 'image/jpg')

puts 'seed observations'
relation1 = Observation.create!(obs_date: Date.new(2021,9,10), category: "Relation à l'autre", note: "Pleure mis en groupe avec Lucas", obs_color: "Difficultés", student: chumbert, user: vrebeix)
relation2 = Observation.create!(obs_date: Date.new(2021,9,28), category: "Relation à l'autre", note: "Attend plusieurs minutes poru sortir de la classe", obs_color: "Neutre", student: chumbert, user: vrebeix)
relation3 = Observation.create!(obs_date: Date.new(2021,9,28), category: "Relation à l'autre", note: "Est en conflit avec les autres", obs_color: "Difficultés", student: lrodriguez, user: vrebeix)
relation4 = Observation.create!(obs_date: Date.new(2021,10,11), category: "Relation à l'autre", note: "Est réfractaire à l'apprentissage, refuse d'apprendre", obs_color: "Difficultés", student: lrodriguez, user: vrebeix)
relation5 = Observation.create!(obs_date: Date.new(2021,10,12), category: "Relation à l'autre", note: "A envie de participer mais n'ose pas (lève la main puis ne participe pas)", obs_color: "Neutre", student: cteissier, user: vrebeix)
relation6 = Observation.create!(obs_date: Date.new(2021,11,29), category: "Relation à l'autre", note: "Ne participe pas, mais suit en classe", obs_color: "Forces", student: cteissier, user: vrebeix)
expression1 = Observation.create!(obs_date: Date.new(2021,11,02), category: "Expression", note: "Ne réagit pas aux injonctions, aux demandes orales", obs_color: "Difficultés", student: lrodriguez, user: vrebeix)
expression2 = Observation.create!(obs_date: Date.new(2021,11,2), category: "Expression", note: "Parle à voix basse, est peu audible", obs_color: "Neutre", student: cteissier, user: vrebeix)
expression3 = Observation.create!(obs_date: Date.new(2021,10,25), category: "Expression", note: "Restituer oralement une leçon", obs_color: "Forces", student: ieurtein, user: vrebeix)
attitude1 = Observation.create!(obs_date: Date.new(2021,12,15), category: "Attitudes corporelles", note: "A une grande fatigabilité", obs_color: "Neutre", student: cteissier, user: vrebeix)
gestesquotidiens1 = Observation.create!(obs_date: Date.new(2021,12,7), category: "Gestes / actes quotidiens", note: "Se repère dans l'espace avec difficulté (tableau, graphique, cahier, dictionnaire...)", obs_color: "Difficultés", student: cteissier, user: vrebeix)
ecriture1 = Observation.create!(obs_date: Date.new(2021,10,11), category: "Ecriture", note: "Ne fixe pas l'orthographe des mots", obs_color: "Difficultés", student: gmakalu, user: vrebeix)
lecture1 = Observation.create!(obs_date: Date.new(2021,12,15), category: "Lecture", note: "Ne comprend pas l'implicite, le second degrés, le sens figuré...", obs_color: "Difficultés", student: lrodriguez, user: vrebeix)
math1 = Observation.create!(obs_date: Date.new(2021,11,2), category: "Mathématiques", note: "Accède difficilement au calcul mental", obs_color: "Neutre", student: cteissier, user: vrebeix)
comportement1 = Observation.create!(obs_date: Date.new(2021,12,15), category: "Comportement", note: "A un principe de réalité erroné (la récréation dure deux semaines)", obs_color: "Neutre", student: lrodriguez, user: vrebeix)
environnement1 = Observation.create!(obs_date: Date.new(2021,10,11), category: "Environnement", note: "Devoirs non-faits", obs_color: "Difficultés", student: lrodriguez, user: vrebeix)
autre1 = Observation.create!(obs_date: Date.new(2021,12,15), category: "Autre", note: "Parents ne viennent pas aux convocations", obs_color: "Difficultés", student: lrodriguez, user: vrebeix)
abs1 = Observation.create!(obs_date: Date.new(2021,9,21), category: "Absence", note: "", obs_color: "Difficultés", student: slamy, user: vrebeix)
b1 = Observation.create!(obs_date: Date.new(2021,10,13), category: "Relation à l'autre", note: "Grand politesse", obs_color: "Forces", student: slamy, user: vrebeix)
abs2 = Observation.create!(obs_date: Date.new(2021,11,26), category: "Absence", note: "", obs_color: "Difficultés", student: slamy, user: vrebeix)
abs3 = Observation.create!(obs_date: Date.new(2021,12,7), category: "Absence", note: "", obs_color: "Difficultés", student: slamy, user: vrebeix)
b2 = Observation.create!(obs_date: Date.new(2021,10,11), category: "Relation à l'autre", note: "S'occupe bien de ses camarades", obs_color: "Forces", student: ipetit, user: vrebeix)
b3 = Observation.create!(obs_date: Date.new(2021,11,14), category: "Environnement", note: "Vient à vélo", obs_color: "Forces", student: slamy, user: vrebeix)
b4 = Observation.create!(obs_date: Date.new(2021,12,15), category: "Environnement", note: "Devoirs parfaits", obs_color: "Forces", student: slamy, user: vrebeix)
b5 = Observation.create!(obs_date: Date.new(2021,11,2), category: "Expression", note: "Bonne expression", obs_color: "Forces", student: ipetit, user: vrebeix)
b6 = Observation.create!(obs_date: Date.new(2021,12,15), category: "Relation à l'autre", note: "Participe à la bonne ambiance de la classe", obs_color: "Forces", student: ipetit, user: vrebeix)

puts 'seeds img'
img_add_note = URI.open('https://res.cloudinary.com/dowgjinna/image/upload/v1641554446/notes_owhf09.png')
img_note_avatar = URI.open('https://res.cloudinary.com/dowgjinna/image/upload/v1641478873/notes_pile_sngwow.png')
img_note_avatar2 = URI.open('https://res.cloudinary.com/dowgjinna/image/upload/v1641802088/notepins2_owhk7h.png')
img_add_note2 = URI.open('https://res.cloudinary.com/dowgjinna/image/upload/v1641802443/noteadd2_gdqhf3.png')

puts 'done'
