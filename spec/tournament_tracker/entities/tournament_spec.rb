RSpec.describe Tournament, type: :entity do
  it 'can be initialized with name' do 
    tournament = Tournament.new(name: 'test')
    expect(tournament.name).to eq('test')
  end 

  it 'can be initialized with date' do 
    date = Date.today
    tournament = Tournament.new(date: date)
    expect(tournament.date).to eq(date)
  end 

  it 'has an organizer' do 
    organizer_repository = OrganizerRepository.new
    organizer = organizer_repository.create(username: 'test_username', password_digest: 'test_password', email: 'test@email.com')
    
    tournament_repository = TournamentRepository.new
    tournament = tournament_repository.create(name: 'test', date: Date.today, organizer_id: organizer.id)
    
    expect(tournament.id).to eq(organizer.id)
  end 
end
