require("minitest/autorun")
require('minitest/rg')
require_relative ('../models/game')

class TestGame < MiniTest::Test

  def setup
    @game1 = Game.new("sissors","rock")
    @game2 = Game.new("rock","sissors")
    @game3 = Game.new("paper","rock")
    @game4 = Game.new("rock","paper")
    @game5 = Game.new("sissors","paper")
    @game6 = Game.new("paper","sissors")
    @game7 = Game.new("paper","paper")
    @game8 = Game.new("sissors","sissors")
    @game9 = Game.new("rock","rock")
  end


def test_sissors_rock
 assert_equal("Rock won", @game1.play())
end

def test_rock_sissors
  assert_equal("Rock won", @game2.play())
end

def test_paper_rock
   assert_equal("Paper won", @game3.play())
end

def test_rock_paper
    assert_equal("Paper won", @game4.play())
end

def test_paper_sissors
     assert_equal("Sissors won", @game5.play())
end

def test_sissors_paper
    assert_equal("Sissors won", @game6.play())
end

def test_paper_paper
    assert_equal("Draw", @game7.play())
end

def test_sissors_sissors
    assert_equal("Draw", @game8.play())
end

def test_rock_rock
    assert_equal("Draw", @game9.play())
end



end
