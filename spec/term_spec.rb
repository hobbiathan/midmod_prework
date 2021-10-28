require './lib/term'

RSpec.describe 'Term' do
  it 'is an instance of Turn' do
    turn = Turn.new()
    expect(turn).to be_instance_of(Turn)
  end



end
