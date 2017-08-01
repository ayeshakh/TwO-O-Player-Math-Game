
class Player

  attr_reader :id, :lives

  def initialize (id, lives=3)
    @id  = id
    @lives = lives
  end

  def reduce_life()
    @lives = @lives - 1
  end

end