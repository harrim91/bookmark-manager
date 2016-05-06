feature 'User sign-up' do
  scenario 'user creates an account' do
    expect { sign_up }.to change(User, :count).by(1)
    expect(page).to have_content 'Welcome Michael!'
    expect(User.first.email).to eq 'test@test.co.uk'
  end
end