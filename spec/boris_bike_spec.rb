require './boris_bike.rb'

#function to test that we search by surnames
describe Person do
  it 'returns customer when we search their surname' do
    person_test = Person.new
    expect(person_test.search_for_surname).to eq("smith")
  end
end
