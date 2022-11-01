require './lib/candidate'
require './lib/race'

RSpec.describe Race do
  it 'exists' do
    race = Race.new("Texas Governor")
    expect(race).to be_a(Race)
  end

  it 'has an office' do
    race = Race.new("Texas Governor")
    expect(race.office).to eq("Texas Governor")
  end

  it 'has a default empty array for candidates' do
    race = Race.new("Texas Governor")
    expect(race.candidates).to eq([])
  end

  it 'stores registered candidates' do
    race = Race.new("Texas Governor")
    candidate1 = race.register_candidate!({name: "Diana D", party: :democrat})
    candidate2 = race.register_candidate!({name: "Roberto R", party: :republican})
    
    expect(race.candidates).to eq([candidate1, candidate2])
  end
end