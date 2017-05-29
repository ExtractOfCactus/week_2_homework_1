class Team

  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
  end

  def team_name()
    return @team_name
  end

  def players()
    return @players
  end

  def coach_name()
    return @coach
  end

  def set_coach_name(new_coach_name)
    @coach = new_coach_name
  end


end