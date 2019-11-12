RSpec.describe TournamentRepository, type: :repository do
  it 'creates record from data' do
    organizer_repository = OrganizerRepository.new
    organizer = organizer_repository.create(username: 'test_username', password_digest: 'test_password', email: 'test@email.com')
    
    repository = TournamentRepository.new
    date = Date.today
    tournament = repository.create(name: 'test', date: date, organizer_id: organizer.id)

    expect(tournament).to be_an_instance_of(Tournament)
    expect(tournament.id).to_not be_nil
    expect(tournament.name).to eq('test')
    expect(tournament.date).to eq(date)
  end
end
