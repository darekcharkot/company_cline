Zrob klase Car ktora bedzie klasą główną dla Truck i F1

Car musi posiadac metody
  - color (string)
  - name (string)
  - owner (string)
  - max_speed (number)
  - breaking_time (number)
  - weight (number)

gdzie breaking_time będzie wyliczany na podstawie wzoru max_speed / weight + 1

Truck i F1 mają dziedziczyć po Car jej metody

Truck ma dodatkową metodę max_weight i can_move?

kiedy max_weight jest przekroczony can_move? ma zwracać false

F1 class ma mieć dodatkowo posiadać metodę fast? która zwraca true albo false jeżeli max_speed jest większe niż 400

Przyklad:

t = Truck.new(color: 'Red', name: 'My awsome car', owner: 'Paweł Niemczyk', max_speed: 100, weight: 1000, max_weight: 999)
t.weight = 900 # musi również działać
t.weight(900) # musi również działać
t.can_move?

f = F1.new(color: 'Red', name: 'My awsome car', owner: 'Paweł Niemczyk', max_speed: 100, weight: 1000)
f.fast?


