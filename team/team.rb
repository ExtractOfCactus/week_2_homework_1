class Team
  attr_reader :team_name, :players, :coach, :points
  attr_writer :coach, :points

  def initialize(team_name, players, coach, points)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = points
  end

  # def team_name()
  #   return @team_name
  # end

  # def players()
  #   return @players
  # end

  # def coach_name()
  #   return @coach
  # end

  # def set_coach_name(new_coach_name)
  #   @coach = new_coach_name
  # end

  def add_new_player(new_player)
    @players << new_player
  end

  def on_the_team(player)
    @players.include?(player) 
  end

  def update_points(win_or_loss)
    @points += 4 if win_or_loss == "win"
  end

end