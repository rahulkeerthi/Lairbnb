# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Superman
User.create(email: "clarkkent@dailyglobe.com",
  password: "kryptonium",
  hero_name: "Superman",
  alterego: "Clark Kent",
  is_hero: true,
  bio: "Superman was born on the planet Krypton and was given the name Kal-El at birth. As a baby, his parents sent him to Earth in a small spaceship moments before Krypton was destroyed in a natural cataclysm. His ship landed in the American countryside, near the fictional town of Smallville")
# Batman
User.create(email: "brucewaye@wayneenterprises.com",
  password: "alfredismyhero",
  hero_name: "Batman",
  alterego: "Bruce Wayne",
  is_hero: true,
  bio: "Batman originated from an incident in Bruce's childhood; after witnessing the murder of his parents Dr. Thomas Wayne and Martha Wayne, he swore vengeance against criminals, an oath tempered by a sense of justice. Bruce trains himself physically and intellectually and crafts a bat-inspired persona to fight crime")
# Iron Man
User.create(email: "tony@starkindustries.com",
  password: "peaceandfreedom",
  hero_name: "Iron Man",
  alterego: "Tony Stark",
  is_hero: true,
  bio: "Without his suit of armor, Tony Stark has no supernatural powers. He is only limited by his imagination. Tony is a brilliant engineer and has used his talents to create a powerful suit of armor that enables the wearer to fly, shoot beams of energy from his hands and chest, and resist the vacuum of space. The suit also protects the wearer from damage and grants superhuman strength")
# Spiderman
User.create(email: "friendlyspider@spider-man.com",
  password: "uncleben",
  hero_name: "Spiderman",
  alterego: "Peter Parker",
  is_hero: true,
  bio: "Peter Parker was on a school field trip to a science lab when he was bitten by a radioactive spider. The next day he woke up with spider powers. It took Peter some time to figure out all his powers and what to do with them. First he wanted to get revenge on those who killed his Uncle Ben. Later, he remembers his Uncle's words \"with great power comes great responsibility\" and he decides to use his powers for good to protect the people of New York from crime. He also designed the Spider-man costume to protect his identity")
# Gambit
User.create(email: "masterofcards@blackjack.com",
  password: "aceofspades",
  hero_name: "Gambit",
  alterego: "Remy Etienne LeBeau",
  is_hero: true,
  bio: "Abandoned at birth due to his burning red eyes, the child who would one day become Remy LeBeau was kidnapped from his hospital ward by members of the New Orleans Thieves' Guild who referred to the child as \"le diable blanc\" - the white devil. They believed he was the child that had been prophesied to unite the warring Guilds. Soon after, Remy was placed in the care of a gang of street thieves who raised the child and taught him the ways of thievery")
# Thanos
User.create(email: "infinitygauntlet@snap.universe",
  password: "savetheuniverse",
  hero_name: "The mad titan",
  alterego: "Thanos",
  is_hero: false,
  bio: "Born Dione on Saturn’s moon of Titan, Thanos grew up in a peace-loving family. However, he began experimenting on other Titans, which increased Thanos’ obsession with death and genetic experimentation. Possessing the DNA of the Deviants and Eternals made Thanos extremely powerful and resilient. At one point, Thanos exposed himself to cosmic rays, which distorted his body")
# Joker
User.create(email: "whysoserious@joker.haha",
  password: "clownsarescary",
  hero_name: "The Joker",
  alterego: "unknown",
  is_hero: false,
  bio: "The Joker has no known superpowers. He is extremely intelligent and has a firm grasp of chemical engineering and weapon design, which he uses to create various instruments of terror, death, and criminal hilarity, if only to the Joker. He is responsible for countless deaths and is a highly dangerous individual")
# Lex Luther
User.create(email: "lexluthor@lexcorp.com",
  password: "ruletheworld",
  hero_name: "Lex Luthor",
  alterego: "Alexei Luthor",
  is_hero: false,
  bio: "A self-made man whose immeasurable intellect is always in conflict with his equally immeasurable ego, Lex Luthor is one of the world's most brilliant minds and most famous villains. From a young age, Lex utilized his almost unparalleled acumen to build himself a financial empire through hard work and dedication—but mainly through the strategic use of intimidation, bribery and murder")
# Magneto
User.create(email: "bendingmetal@gmail.com",
  password: "whatanicehelmet",
  hero_name: "Magneto",
  alterego: "Max Eisenhardt",
  is_hero: false,
  bio: "The character is a powerful mutant, one of a fictional subspecies of humanity born with superhuman abilities, who has the ability to generate and control magnetic fields. Magneto regards mutants as evolutionarily superior to humans and rejects the possibility of peaceful human-mutant coexistence; he initially aimed to conquer the world to enable mutants, whom he refers to as homo superior, to replace humans as the dominant species")
# Loki
User.create(email: "loki@asgard.universe",
  password: "ilovemybrother",
  hero_name: "Loki",
  alterego: "Loki Odinson",
  is_hero: false,
  bio: "Loki was born on Jotunheim as the son of the Frost Giant King, Laufey. Small and weak for a Frost Giant, Loki was abandoned by his father in a temple, being left to die. In 965 A.D., not long after the war between the Giants and the Asgardians, Loki was found by King Odin. Adopting Loki and using sorcery to alter his appearance to make him appear to be an Asgardian, Odin raised Loki and his biological son, Thor, with his wife Frigga. As they grew up, Loki always felt that he was always living in Thor's shadow, envious to the fact that Thor was meant to be king instead of him")

# Batcave
Lair.create!(title: "Batcave",
  location: "Gotham city",
  description: "Nice place to meet and sort out plans to save the universe. Comes with a ton of cool tech equipment",
  price_per_night: 10,
  is_hero_lair: true,
  user_id: 2)
# Fortress of Solitude
Lair.create(title: "Fortress of Solitude",
  location: "Arctic Cricle",
  description: "Pretty large but very lonely fortress made out of ice. Nice if you want to calm down",
  price_per_night: 10,
  is_hero_lair: true,
  user_id: 1)
# Jabba's Palace
Lair.create(title: "Jabba's Palace",
  location: "Tatooine",
  description: "Great palace in the middle of nowhere. Don't worry, Darth Vader will never come and visit",
  price_per_night: 10,
  is_hero_lair: false,
  user_id: 10)
# Death Star
Lair.create(title: "Death Star",
  description: "Gigantic moon-like space ship with the power to destroy planets",
  location: "Alderaan's orbit",
  price_per_night: 100,
  is_hero_lair: false,
  user_id: 6)

Booking.create(start_date: "2020-02-20",
end_date: "2020-03-20",
user_id: 3,
lair_id: 1,
total_cost: 195204)

Booking.create(start_date: "2020-02-20",
end_date: "2020-03-20",
user_id: 6,
lair_id: 4,
total_cost: 9987667)

Booking.create(start_date: "2020-02-20",
end_date: "2020-03-20",
user_id: 9,
lair_id: 3,
total_cost: 9987667)
