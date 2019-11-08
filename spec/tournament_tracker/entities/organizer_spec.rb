RSpec.describe Organizer, type: :entity do
  it 'it can be initialized with username' do
    organizer = Organizer.new(username: 'test')
    expect(organizer.username).to eq('test') 
  end 

  it 'it can be initialized with password' do
    organizer = Organizer.new(password_digest: 'test_password')
    expect(organizer.password_digest).to eq('test_password') 
  end 

  it 'it can be initialized with email' do
    organizer = Organizer.new(email: 'test@email.com')
    expect(organizer.email).to eq('test@email.com') 
  end 
end
