# Class Car
class Car
  def initialize(color: nil, name: nil, owner: nil, max_speed: nil, weight: nil)
    @color = color
    @name = name
    @owner = owner
    @weight = weight
    @max_speed = max_speed
  end

  def breaking_time
    max_speed / weight + 1
  end

  attr_reader :color, :name, :owner, :max_speed
  attr_accessor :weight
end

class Truck < Car
  def initialize(color: nil, name: nil, owner: nil, max_speed: nil, weight: nil, max_weight: nil)
    @max_weight = max_weight
    super(color: color, name: name, owner: owner, max_speed: max_speed, weight: weight)
  end

  attr_reader :max_weight

  def can_move?
    weight <= max_weight
  end
end

class F1 < Car
  def fast?
    @max_speed > 400
  end
end

t = Truck.new(color: 'Red', name: 'My awsome car', owner: 'Paweł Niemczyk', max_speed: 100, weight: 1000, max_weight: 999)
t.weight = 900 # musi również działać
t.can_move?

f = F1.new(color: 'Red', name: 'My awsome car', owner: 'Paweł Niemczyk', max_speed: 100, weight: 1000)
f.fast?


