class Names
     def initialize( given, family, nick, pet )
       @given = given
       @family = family
       @nick = nick
@pet = pet
 end
# te metody są domyślnie publiczne
     def given
       @given
end
     def family
       @family
end
# wszystkie poniższe metody będą prywatne, dopóki nie zostanie to zmienione
private
def nick
  @nick
end
# wszystkie poniższe metody będą chronione, dopóki nie zostanie to zmienione
protected
def pet
 @pet
end
 end
