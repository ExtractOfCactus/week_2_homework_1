require('minitest/autorun')
require_relative('../team.rb')

class TestTeam < Minitest::Test

  def setup
    @team = Team.new("The Sportsballers", ["Jim", "Bob", "Ralf"], "John Coachman")
  end

  def test_team_name
    assert_equal("The Sportsballers", @team.team_name())
  end

  def test_players
    assert_equal(["Jim", "Bob", "Ralf"], @team.players())
  end

  def test_coach
    assert_equal("John Coachman", @team.coach())
  end

  def test_set_coach
    @team.coach = ("Larry Trainer")
    assert_equal("Larry Trainer", @team.coach)
  end

  def test_add_new_player
    new_array = @team.add_new_player("Dave")
    assert_equal(4, new_array.length())
  end

  def test_on_the_team
    assert_equal(true, @team.on_the_team("Bob"))
  end

end
