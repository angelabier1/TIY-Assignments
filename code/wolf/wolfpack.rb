# Wolfpack is a group of wolves
# Oldest wolf is the leader
# If a wolf joins a pack and becomes leader, the pack throws out the former leader.
# A wolfpack can take down different sized things depending on how big it is.
  # A pack of 2 wolves can hunt a gazelle
  # A pack of 5 wolves can hunt a water buffalo
  # A pack of 30 wolves can eat a rhinoceros

class Wolfpack
  attr_accessor :leader, :wolfpack,:name, :age

  def initialize(wolves)
    @wolfpack = wolves
  end

  def is_leader
    @leader = @wolfpack.sort_by {|wolf| wolf.age }.last
  end

  def more_than_one_wolf
    if @wolfpack.length > 1
    true
    end
  end

=begin
  def can_hunt_gazelle
    if @wolfpack.length > 2 && < 5
      true
    else
      false
    end
  end

  def can_hunt_water_buffalo
    if @wolfpack.length > 5 && < 30
     true
    else
      false
    end
  end

  def can_hunt_rhino
    if @wolfpack.length > 30
      true
    else
       false
    end
  end
=end


 end