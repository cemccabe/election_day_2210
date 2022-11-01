class Race
  attr_reader :office, :candidates

  def initialize(office)
    @office = office
    @candidates = []
  end

  def register_candidate!(candidate)
    can = Candidate.new(candidate)
    @candidates << can
    can
  end
end
