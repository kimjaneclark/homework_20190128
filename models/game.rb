class Game

  def initialize (hand1, hand2)
    @hand1 = hand1
    @hand2 = hand2
  end

  def play
    if @hand1 =="rock" && @hand2 =="sissors"
      return "Rock won"
    elsif @hand1 =="sissors" && @hand2 == "rock"
      return "Rock won"
    elsif @hand1 =="rock" && @hand2 == "paper"
      return "Paper won"
    elsif @hand1 =="paper" && @hand2 =="rock"
      return "Paper won"
    elsif @hand1 =="sissors" && @hand2 =="paper"
      return "Sissors won"
    elsif @hand1 =="paper" && @hand2 =="sissors"
      return "Sissors won"
    elsif @hand1 =="paper" && @hand2 =="paper"
      return "Draw"
    elsif @hand1 =="sissors" && @hand2 =="sissors"
      return "Draw"
    elsif @hand1 =="rock" && @hand2 =="rock"
      return "Draw"
    end
  end

end
