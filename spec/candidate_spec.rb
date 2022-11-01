require './lib/candidate'

RSpec.describe Candidate do
  before(:each) do
    @diana = Candidate.new({name: "Diana D", party: :democrat})
  end

  it 'exists' do
    expect(@diana).to be_a(Candidate)
  end

  it 'has a name' do
    expect(@diana.name).to eq("Diana D")
  end

  it 'has a party' do
    expect(@diana.party).to eq(:democrat)
  end

  it 'has a vote counter that starts at 0' do
    expect(@diana.votes).to eq(0)
  end

  it 'stores votes' do
    @diana.vote_for!
    @diana.vote_for!

    expect(@diana.votes).to eq(2)
  end
end