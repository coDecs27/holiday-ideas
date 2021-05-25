# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

file_one = URI.open('https://g4w8c6t2.rocketcdn.me/wp-content/uploads/2018/11/Kreta_713107657.jpg')
file_two = URI.open('https://majjistral.org/wp-content/uploads/2020/06/golden-bay.jpg')
file_three = URI.open('https://www.ab-in-den-urlaub.de/magazin/wp-content/uploads/2019/08/1566905518_Blick-auf-den-Achensee-in-Tirol.jpg')
file_four = URI.open('https://cdn2.hometogo.net/assets/media/pics/1200_628/5c408d0f86350.jpg')
file_five = URI.open('https://www.italien.de/images/Giardini-Naxos_Sizilien_Italien-1200x700.jpg')
file_six = URI.open('https://media.spar-mit.com/image-handler/media/dms/89ab4bee81c5aca5b6832e7d4e0d5eaf256c8b76/w1024_0-0.033-0.932-0.582/Platz.jpg')

kreta = Holiday.create(
  city: "Kreta",
  country: "Griechenland",
  description: "Das Hinterland ist hügelig bis bergig und wer Lust hat Land & Leute kennen zu lernen, kann auf eigene Faust die reizvolle Umgebung oder das 25 km entfernte Heraklion erkunden.",
  rating: 5
)

majjistral = Holiday.create(
  city: "Majjistral",
  country: "Malta",
  description: "Entdecken Sie die Wärme der traditionellen maltesischen Gastfreundlichkeit, die Aromen autentischer Kochkunst und die Schönheit des Mittelmeers- Erleben Sie den Urlaub, den Sie verdient haben.",
  rating: 4
)

tirol = Holiday.create(
  city: "Tirol",
  country: "Österreich",
  description: "Tirol ist ein Bundesland im Westen Österreichs, das in den Alpen liegt und für seine Skigebiete, historischen Stätten und Volksbräuche bekannt ist.",
  rating: 3
)

agia_napa = Holiday.create(
  city: "Agia Napa",
  country: "Zypern",
  description: "Ayia Napa ist ein Ferienort mit bekannten Stränden an der Südküste der Mittelmeerinsel Zypern. Die wichtigste Sehenswürdigkeit der Stadt ist das historische Kloster aus der Zeit der venezianischen Kreuzfahrer, das auf dem Platz Plateia Seferi in der Altstadt steht und von Bars und Clubs umgeben ist.",
  rating: 4
)

giardini_naxos = Holiday.create(
  city: "Giardini Naxos",
  country: "Italien",
  description: "Giardini-Naxos oder kurz Giardini ist eine italienische Gemeinde der Metropolitanstadt Messina auf der Mittelmeerinsel Sizilien mit knapp 10.000 Einwohnern.",
  rating: 5
)

kolberg = Holiday.create(
  city: "Kolberg",
  country: "Polen",
  description: "Kolberg ist ein polnisches Ostseebad, das für seine Solequellen bekannt ist. Die gotische Marienbasilika besitzt ein aus dem 14. Jahrhundert stammendes Taufbecken und einen siebenarmigen Leuchter aus dem 16. Jahrhundert.",
  rating: 4
)

kreta.photo.attach(io: file_one, filename: 'Kreta_713107657.jpg', content_type: 'image/jpg')
majjistral.photo.attach(io: file_two, filename: 'golden-bay.jpg', content_type: 'image/jpg')
tirol.photo.attach(io: file_three, filename: '1566905518_Blick-auf-den-Achensee-in-Tirol.jpg', content_type: 'image/jpg')
agia_napa.photo.attach(io: file_four, filename: '5c408d0f86350.jpg', content_type: 'image/jpg')
giardini_naxos.photo.attach(io: file_five, filename: 'Giardini-Naxos_Sizilien_Italien-1200x700.jpg', content_type: 'image/jpg')
kolberg.photo.attach(io: file_six, filename: 'Platz.jpg', content_type: 'image/jpg')
