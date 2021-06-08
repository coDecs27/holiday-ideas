# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

file_one = URI.open('https://g4w8c6t2.rocketcdn.me/wp-content/uploads/2018/11/Kreta_713107657.jpg')
file_two = URI.open('https://majjistral.org/wp-content/uploads/2020/06/golden-bay.jpg')
file_three = URI.open('https://www.kitzbueheler-alpen.com/media/animation/landschaft-im-herbst-region-st.-johann-in-tirol-8-2.jpg')
file_four = URI.open('https://cdn2.hometogo.net/assets/media/pics/1200_628/5c408d0f86350.jpg')
file_five = URI.open('https://www.italien.de/images/Giardini-Naxos_Sizilien_Italien-1200x700.jpg')
file_six = URI.open('https://media.spar-mit.com/image-handler/media/dms/89ab4bee81c5aca5b6832e7d4e0d5eaf256c8b76/w1024_0-0.033-0.932-0.582/Platz.jpg')

kreta = Holiday.create(
  city: "Kreta",
  country: "Griechenland",
  description: "Die griechische Insel Kreta liegt im Mittelmeer und ist dort die fünftgrößte Insel. Sie befindet sich ca. 160 km vom Festland entfernt. Kreta ist die größte der griechischen Inseln. Gavdos, der südlichste Punkt Europas befindet sich auf Kreta. Reizvoll ist die Landschaft mitsamt seiner spezifischen Flora und Fauna. Kreta verfügt über vier Gebirgsketten, das Ida Gebirge, die weißen Berge (Lefka Ori), das Dikti Gebirge und das kleinste, das Thripti Gebirge. Das Klima entspricht einem gleichmäßigen Mittelmeerklima. Kreta ist bei Urlaubern gerade deshalb so beliebt, weil sie die sonnigste Insel des Mittelmeers ist und mit 300 Sonnentagen im Jahr Urlaub garantiert.",
  rating: 5
)

majjistral = Holiday.create(
  city: "Majjistral",
  country: "Malta",
  description: "In Majjistral, dem nördlichen Teil der Insel, sollten Sie aber auch auf jeden Fall Ihre Schwimm- und Schnorchelausrüstung einpacken, um die Blaue Lagune zu erkunden. Schroffe Felsformationen, die sich in das tiefblaue Mittelmeer stürzen, seichte abfallende Hügel mit grasenden Ziegenherden und eine Fülle an Sehenswürdigkeiten werden Ihren Urlaub in ein unvergessliches Erlebnis verwandeln. Sie ahnen es vielleicht bereits: Majjistral ist nicht nur eine beliebte Urlaubsregion für all diejenigen, die Tekkingstöcke in die Hand nehmen wollen, sondern auch ein Geheimtipp unter denen, die abseits vom Massentourismus an den Stränden der Golden Bay oder der Riviera Bay schwimmen, tauchen und entspannen wollen.",
  rating: 4
)

tirol = Holiday.create(
  city: "Tirol",
  country: "Österreich",
  description: "Sportlichen Aktivitäten und Touren für Genießer sind in Tirol fast keine Grenzen gesetzt, zu keiner Jahreszeit. Wandern und Klettern im Sommer etwa mit unvergesslichen Gipfelerlebnissen. Skifahren, Langlaufen und Rodeln im Winter, wenn sich das Land in sein romantisches Schneekleid hüllt. Ob im Ötztal, Paznauntal, Pitztal, Zillertal, Stubaital, in Osttirol, am Achensee, in der Landeshauptstadt Innsbruck oder dem legendären Kitzbühel: In den Regionen und Orten erlebt man die alten Bräuche der Tiroler und eine oft hochkarätige Kulturszene. Die gemütlichen Tiroler Wirtshäuser sorgen mit verführerischen Spezialitäten für die ersehnte Kräftigung nach einem langen Tag an der frischen Luft.",
  rating: 3
)

agia_napa = Holiday.create(
  city: "Agia Napa",
  country: "Zypern",
  description: "Nach Agia Napa und auch ins benachbarte Protaras kommen vor allem junge Leute aus Großbritannien, Skandinavien und den osteuropäischen Ländern, um neben den Stränden die unzähligen Bars und Clubs zu bevölkern. Auch Soldaten von der nahegelegenen britischen Basis in Dekelia sowie UNO-Soldaten aus Nikosia kommen zum Feiern hierher, nicht immer ohne Konflikte, sodass des Öfteren von den militärischen Vorgesetzten Ausgehverbote oder bestimmte Lokalverbote verhängt werden. Auch der Hafen Ayia Napas ist heute überwiegend durch die touristische Nutzung geprägt.",
  rating: 4
)

giardini_naxos = Holiday.create(
  city: "Giardini Naxos",
  country: "Italien",
  description: "Giardini Naxos liegt an der Ostküste Siziliens zwischen Catania und Messina. Die unteren Hänge der Peloritanischen Berge umgeben den Golf von Giardini Naxos, den im Nordosten Capo Taormina und im Süden Capo Schisò einschließt. Im Laufe der Jahre ist das einstige Fischerdorf zu einem beliebten Badeort herangewachsen. Ein herrlicher Sandstrand, unzählige Restaurants, Sommerveranstaltungen und die Nähe zu Taormina bieten die ideale Umgebung für einen perfekten Urlaub in Giardini Naxos.",
  rating: 5
)

kolberg = Holiday.create(
  city: "Kolberg",
  country: "Polen",
  description: "Kolberg, heute Kolobrzeg (polnisch), ist eine Hafenstadt und liegt in Westpommern an der Polnischen Ostsee. Der Kurort ist der bekannteste Badeort in Polen und etwa 300 Kilometer von Berlin entfernt auf der Strecke zwischen Usedom und Danzig (Gdansk). Mit ihren etwa 60.000 Einwohnern ist die Stadt in verschiedene Bereiche aufgeteilt, wie beispielsweise das Hafenviertel, das Kur-Viertel, der Weststrand, die Innenstadt und anderer Sehenswürdigkeiten.",
  rating: 4
)

kreta.photo.attach(io: file_one, filename: 'Kreta_713107657.jpg', content_type: 'image/jpg')
majjistral.photo.attach(io: file_two, filename: 'golden-bay.jpg', content_type: 'image/jpg')
tirol.photo.attach(io: file_three, filename: 'landschaft-im-herbst-region-st.-johann-in-tirol-8-2.jpg', content_type: 'image/jpg')
agia_napa.photo.attach(io: file_four, filename: '5c408d0f86350.jpg', content_type: 'image/jpg')
giardini_naxos.photo.attach(io: file_five, filename: 'Giardini-Naxos_Sizilien_Italien-1200x700.jpg', content_type: 'image/jpg')
kolberg.photo.attach(io: file_six, filename: 'Platz.jpg', content_type: 'image/jpg')
