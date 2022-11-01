class Election
  attr_reader :year, :races, :candidates

  def initialize(year)
    @year = year
    @races = []
    @candidates = []
  end

  def add_race(race)
    @races << race
  end

  def vote_counts
    hsh = {}
    @races.each do |race|
      race.candidates.each do |candidate|
        hsh[candidate.name] = candidate.votes
      end
    end
    hsh
  end
end
