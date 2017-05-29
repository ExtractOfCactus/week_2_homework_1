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

  def test_coach_name
    assert_equal("John Coachman", @team.coach_name())
  end

  def test_set_coach_name
    assert_equal("Larry Trainer", @team.set_coach_name("Larry Trainer"))
  end

end
