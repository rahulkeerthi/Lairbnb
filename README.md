Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates), created by the [Le Wagon coding bootcamp](https://www.lewagon.com) team.

Routes

Users

* - show  - GET /users/:id to: users#show
- new (Devise)
- create (Devise)
- edit (Devise)
- update (Devise)


Lairs
  All
*    - index GET /lairs to: lairs#index
*    - show GET /lairs/:id to: lairs#show
  Host
    - create
    - new
    - edit
    - update
    - delete

Bookings

- index
* - show GET /bookings/:id to: bookings#show
* - create POST /bookings to: bookings#create
- delete


Stories

As a hero, I can see all the lairs available
As a hero, I can see a specific lair

As a hero, I can see a specific host
As a hero, I can see that host's lairs

As a hero, I can create a booking
As a hero, I can see a booking


Associations
A user (host) can have many lairs
A user (hero) can have many bookings
A user (hero) can have lairs through bookings
A lair can have many bookings
A lair belongs to one user (host)
A booking belongs to one user (hero)
A booking belongs to one lair


Validations
User
  Must have a unique, and present hero_name
  Must have an alterego
  Must have a unique, and present email
  Must have a password
  Must have an is_hero (boolean)

Lairs
  Must have title
  Must have a price greater than 0
  Must have a location

Bookings
  Must have a start_date
  Must have an end_date
  (Start_date must be before end_date)

