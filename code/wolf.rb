#Wolf has a name and age
#Wolf can join a pack
#Wolf can howl
#Wolf can how louder if older than 3 than if it's younger

class Wolf
  attr_accessor :name, :age, :wolf

  def initialize(name,age)
    @name = name
    @age = age
  end

  def join_pack
    true
  end

  def howl
    "howwwlllll!"
  end

  def howl_louder
    if self.age > 3
      "HOWWWWWWLLLLLL!"
    else
      "#{@name} is too young to howl any louder!"
    end
  end


  def submissive_to(wolf)
      if self.age < wolf.age
        true
      else
        false
      end
  end


  def dominant_to(wolf)
    if self.age > wolf.age
        true
      else
        false
    end
  end
  end
