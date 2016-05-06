feature 'User sign-up' do
  scenario 'user creates an account' do
    expect { sign_up }.to change(User, :count).by(1)
    expect(page).to have_content 'Welcome Michael!'
    expect(User.first.email).to eq 'test@test.co.uk'
  end

  scenario 'user needs to validate his password' do
    expect { sign_up('Michael', 'michael@partyhard.com', '110191', '110090') }.to change(User, :count).by(0)
    expect(current_path).to eq '/users/new'
    expect(page).to have_content('Are you trying to cheat me m8?')
  end
end
