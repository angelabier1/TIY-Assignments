# Wolfpack is a group of wolves
# Oldest wolf is the leader
# If a wolf joins a pack and becomes leader, the pack throws out the former leader.
# A wolfpack can take down different sized things depending on how big it is.
  # A pack of 2 wolves can hunt a gazelle
  # A pack of 5 wolves can hunt a water buffalo
  # A pack of 30 wolves can eat a rhinoceros

class Wolfpack
  attr_accessor :wolves

  def initialize
    @wolves = [] unless @wolves
  end

  def is_leader
    @wolves.sort_by(age)
  end

  def can_hunt
    if @wolves.length > 2 && < 5
      "The Wolfpack can hunt a gazelle! "
    elsif @wolves.length > 5 && < 30
      "The Wolfpack can hunt a water buffalo"
    else
      @wolves.length > 30
      "The Wolfpack can hunt a rhinoceros"
    end
  end


 end