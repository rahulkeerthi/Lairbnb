require 'open-uri'

# Superman
user = User.new(email: "clarkkent@dailyglobe.com",
  password: "kryptonium",
  hero_name: "Superman",
  alterego: "Clark Kent",
  is_hero: true,
  bio: "Superman was born on the planet Krypton and was given the name Kal-El at birth. As a baby, his parents sent him to Earth in a small spaceship moments before Krypton was destroyed in a natural cataclysm. His ship landed in the American countryside, near the fictional town of Smallville")
user.photo.attach(io: URI.open("https://res.cloudinary.com/rahaluha/image/upload/v1582642715/Lewagon-Lairbnb/users/superman_xzafzg.jpg"), filename: 'superman.jpg', content_type: 'image/jpg')
user.save
# Batman

user = User.new(email: "brucewaye@wayneenterprises.com",
  password: "alfredismyhero",
  hero_name: "Batman",
  alterego: "Bruce Wayne",
  is_hero: true,
  bio: "Batman originated from an incident in Bruce's childhood; after witnessing the murder of his parents Dr. Thomas Wayne and Martha Wayne, he swore vengeance against criminals, an oath tempered by a sense of justice. Bruce trains himself physically and intellectually and crafts a bat-inspired persona to fight crime")
user.photo.attach(io: URI.open("https://res.cloudinary.com/rahaluha/image/upload/v1582642714/Lewagon-Lairbnb/users/batman_tnyhao.jpg"), filename: 'batman.jpg', content_type: 'image/jpg')
user.save

# Iron Man
user = User.new(email: "tony@starkindustries.com",
  password: "peaceandfreedom",
  hero_name: "Iron Man",
  alterego: "Tony Stark",
  is_hero: true,
  bio: "Without his suit of armor, Tony Stark has no supernatural powers. He is only limited by his imagination. Tony is a brilliant engineer and has used his talents to create a powerful suit of armor that enables the wearer to fly, shoot beams of energy from his hands and chest, and resist the vacuum of space. The suit also protects the wearer from damage and grants superhuman strength")
user.photo.attach(io: URI.open("https://res.cloudinary.com/rahaluha/image/upload/v1582642715/Lewagon-Lairbnb/users/ironman_v7fsut.jpg"), filename: 'ironman.jpg', content_type: 'image/jpg')
user.save

# Spiderman
user = User.new(email: "friendlyspider@spider-man.com",
  password: "uncleben",
  hero_name: "Spiderman",
  alterego: "Peter Parker",
  is_hero: true,
  bio: "Peter Parker was on a school field trip to a science lab when he was bitten by a radioactive spider. The next day he woke up with spider powers. It took Peter some time to figure out all his powers and what to do with them. First he wanted to get revenge on those who killed his Uncle Ben. Later, he remembers his Uncle's words \"with great power comes great responsibility\" and he decides to use his powers for good to protect the people of New York from crime. He also designed the Spider-man costume to protect his identity")
user.photo.attach(io: URI.open("https://res.cloudinary.com/rahaluha/image/upload/v1582642714/Lewagon-Lairbnb/users/spiderman_nwhprw.jpg"), filename: 'spiderman.jpg', content_type: 'image/jpg')
user.save

# Gambit
user = User.new(email: "masterofcards@blackjack.com",
  password: "aceofspades",
  hero_name: "Gambit",
  alterego: "Remy Etienne LeBeau",
  is_hero: true,
  bio: "Abandoned at birth due to his burning red eyes, the child who would one day become Remy LeBeau was kidnapped from his hospital ward by members of the New Orleans Thieves' Guild who referred to the child as \"le diable blanc\" - the white devil. They believed he was the child that had been prophesied to unite the warring Guilds. Soon after, Remy was placed in the care of a gang of street thieves who raised the child and taught him the ways of thievery")
user.photo.attach(io: URI.open("https://res.cloudinary.com/rahaluha/image/upload/v1582642715/Lewagon-Lairbnb/users/gambit_ytuywc.jpg"), filename: 'gambit.jpg', content_type: 'image/jpg')
user.save

# Thanos
user = User.new(email: "infinitygauntlet@snap.universe",
  password: "savetheuniverse",
  hero_name: "Thanos",
  alterego: "The Mad Titan",
  is_hero: false,
  bio: "Born Dione on Saturn’s moon of Titan, Thanos grew up in a peace-loving family. However, he began experimenting on other Titans, which increased Thanos’ obsession with death and genetic experimentation. Possessing the DNA of the Deviants and Eternals made Thanos extremely powerful and resilient. At one point, Thanos exposed himself to cosmic rays, which distorted his body")
user.photo.attach(io: URI.open("https://res.cloudinary.com/rahaluha/image/upload/v1582642714/Lewagon-Lairbnb/users/thanos_zo8cm7.jpg"), filename: 'thanos.jpg', content_type: 'image/jpg')
user.save

# Joker
user = User.new(email: "whysoserious@joker.haha",
  password: "clownsarescary",
  hero_name: "The Joker",
  alterego: "unknown",
  is_hero: false,
  bio: "The Joker has no known superpowers. He is extremely intelligent and has a firm grasp of chemical engineering and weapon design, which he uses to create various instruments of terror, death, and criminal hilarity, if only to the Joker. He is responsible for countless deaths and is a highly dangerous individual")
user.photo.attach(io: URI.open("https://res.cloudinary.com/rahaluha/image/upload/v1582642714/Lewagon-Lairbnb/users/joker_iowrrs.jpg"), filename: 'thanos.jpg', content_type: 'image/jpg')
user.save
# Lex Luther
user = User.new(email: "lexluthor@lexcorp.com",
  password: "ruletheworld",
  hero_name: "Lex Luthor",
  alterego: "Alexei Luthor",
  is_hero: false,
  bio: "A self-made man whose immeasurable intellect is always in conflict with his equally immeasurable ego, Lex Luthor is one of the world's most brilliant minds and most famous villains. From a young age, Lex utilized his almost unparalleled acumen to build himself a financial empire through hard work and dedication—but mainly through the strategic use of intimidation, bribery and murder")
user.photo.attach(io: URI.open("https://res.cloudinary.com/rahaluha/image/upload/v1582642714/Lewagon-Lairbnb/users/lexluthor_pczb4s.jpg"), filename: 'lexluthor.jpg', content_type: 'image/jpg')
user.save
# Magneto
user = User.new(email: "bendingmetal@gmail.com",
  password: "whatanicehelmet",
  hero_name: "Magneto",
  alterego: "Max Eisenhardt",
  is_hero: false,
  bio: "The character is a powerful mutant, one of a fictional subspecies of humanity born with superhuman abilities, who has the ability to generate and control magnetic fields. Magneto regards mutants as evolutionarily superior to humans and rejects the possibility of peaceful human-mutant coexistence; he initially aimed to conquer the world to enable mutants, whom he refers to as homo superior, to replace humans as the dominant species")
user.photo.attach(io: URI.open("https://res.cloudinary.com/rahaluha/image/upload/v1582642714/Lewagon-Lairbnb/users/magneto_ftoeba.jpg"), filename: 'magneto.jpg', content_type: 'image/jpg')
user.save
# Loki
user = User.new(email: "loki@asgard.universe",
  password: "ilovemybrother",
  hero_name: "Loki",
  alterego: "Loki Odinson",
  is_hero: false,
  bio: "Loki was born on Jotunheim as the son of the Frost Giant King, Laufey. Small and weak for a Frost Giant, Loki was abandoned by his father in a temple, being left to die. In 965 A.D., not long after the war between the Giants and the Asgardians, Loki was found by King Odin. Adopting Loki and using sorcery to alter his appearance to make him appear to be an Asgardian, Odin raised Loki and his biological son, Thor, with his wife Frigga. As they grew up, Loki always felt that he was always living in Thor's shadow, envious to the fact that Thor was meant to be king instead of him")
user.photo.attach(io: URI.open("https://res.cloudinary.com/rahaluha/image/upload/v1582642714/Lewagon-Lairbnb/users/loki_l4jyak.jpg"), filename: 'loki.jpg', content_type: 'image/jpg')
user.save

# Batcave
lair = Lair.new(title: "Batcave",
  location: "Gotham city",
  description: "Nice place to meet and sort out plans to save the universe. Comes with a ton of cool tech equipment",
  price_per_night: 80,
  is_hero_lair: true,
  user_id: 2)
lair.photos.attach(io: URI.open("https://res.cloudinary.com/rahaluha/image/upload/v1582642735/Lewagon-Lairbnb/lairs/batcave1_buwgx8.jpg"), filename: 'batcave1.jpg', content_type: 'image/jpg')
lair.photos.attach(io: URI.open("https://res.cloudinary.com/rahaluha/image/upload/v1582642735/Lewagon-Lairbnb/lairs/batcave2_s1uw0k.jpg"), filename: 'batcave2.jpg', content_type: 'image/jpg')
lair.photos.attach(io: URI.open("https://res.cloudinary.com/rahaluha/image/upload/v1582642735/Lewagon-Lairbnb/lairs/batcave3_vvw3jp.jpg"), filename: 'batcave3.jpg', content_type: 'image/jpg')
lair.save

# Fortress of Solitude
lair = Lair.new(title: "Fortress of Solitude",
  location: "Arctic Cricle",
  description: "Pretty large but very lonely fortress made out of ice. Nice if you want to calm down",
  price_per_night: 100,
  is_hero_lair: true,
  user_id: 1)
lair.photos.attach(io: URI.open("https://res.cloudinary.com/rahaluha/image/upload/v1582642734/Lewagon-Lairbnb/lairs/fortress1_ggf2u5.jpg"), filename: 'fortress1.jpg', content_type: 'image/jpg')
lair.photos.attach(io: URI.open("https://res.cloudinary.com/rahaluha/image/upload/v1582642734/Lewagon-Lairbnb/lairs/fortress2_jyj09o.jpg"), filename: 'fortress2.jpg', content_type: 'image/jpg')
lair.photos.attach(io: URI.open("https://res.cloudinary.com/rahaluha/image/upload/v1582642734/Lewagon-Lairbnb/lairs/fortress3_tokhoq.jpg"), filename: 'fortress3.jpg', content_type: 'image/jpg')
lair.save

# Jabba's Palace
lair = Lair.new(title: "Jabba's Palace",
  location: "Tatooine",
  description: "Great palace in the middle of nowhere. Don't worry, Darth Vader will never come and visit",
  price_per_night: 90,
  is_hero_lair: false,
  user_id: 10)
lair.photos.attach(io: URI.open("https://res.cloudinary.com/rahaluha/image/upload/v1582642734/Lewagon-Lairbnb/lairs/jabba1_yjnhih.jpg"), filename: 'palace1.jpg', content_type: 'image/jpg')
lair.photos.attach(io: URI.open("https://res.cloudinary.com/rahaluha/image/upload/v1582642734/Lewagon-Lairbnb/lairs/jabba2_aerqlr.jpg"), filename: 'palace2.jpg', content_type: 'image/jpg')
lair.photos.attach(io: URI.open("https://res.cloudinary.com/rahaluha/image/upload/v1582642734/Lewagon-Lairbnb/lairs/jabba3_xngoan.jpg"), filename: 'palace3.jpg', content_type: 'image/jpg')
lair.save

# Death Star
lair = Lair.new(title: "Death Star",
  description: "Gigantic moon-like space ship with the power to destroy planets",
  location: "Alderaan's orbit",
  price_per_night: 200,
  is_hero_lair: false,
  user_id: 6)
lair.photos.attach(io: URI.open("https://res.cloudinary.com/rahaluha/image/upload/v1582642734/Lewagon-Lairbnb/lairs/deathstar1_kdrlxi.jpg"), filename: 'deathstar1.jpg', content_type: 'image/jpg')
lair.photos.attach(io: URI.open("https://res.cloudinary.com/rahaluha/image/upload/v1582642734/Lewagon-Lairbnb/lairs/deathstar2_lpd7kh.jpg"), filename: 'deathstar2.jpg', content_type: 'image/jpg')
lair.photos.attach(io: URI.open("https://res.cloudinary.com/rahaluha/image/upload/v1582642734/Lewagon-Lairbnb/lairs/deathstar3_bd3xdm.jpg"), filename: 'deathstar3.jpg', content_type: 'image/jpg')
lair.save

Booking.create(start_date: "2020-02-20",
end_date: "2020-02-22",
user_id: 3,
lair_id: 1,
total_cost: 195204)

Booking.create(start_date: "2020-02-21",
end_date: "2021-02-23",
user_id: 6,
lair_id: 4,
total_cost: 99)

Booking.create(start_date: "2020-02-22",
end_date: "2023-02-24",
user_id: 9,
lair_id: 3,
total_cost: 89)
