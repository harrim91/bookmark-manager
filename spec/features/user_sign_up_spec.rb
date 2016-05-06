feature 'User sign-up' do
  scenario 'user creates an account' do
    visit '/users/new'
    fill_in(:username, with: 'Michael')
    fill_in(:email, with: 'test@test.co.uk')
    fill_in(:password, with: '110191')
  end
end