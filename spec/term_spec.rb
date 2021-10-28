require './lib/term'

RSpec.describe 'Term' do
  it 'is an instance of Turn' do
    term = Term.new("Winter 2018")
    expect(term).to be_instance_of(Term)
  end

  it 'can read Term name' do
    term = Term.new("Winter 2018")
    expect(term.name).to eq("Winter 2018")
  end

  it 'can initialize an empty array (courses)' do
    term = Term.new("Winter 2018")
    expect(term.courses).to eq([])
  end



end
