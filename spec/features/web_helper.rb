def add_link (title, url, tag)
  visit '/links'
  click_button('Add new link')
  fill_in(:title, with: title)
  fill_in(:url, with: url)
  fill_in(:tag, with: tag)
  click_button('Save link')
end

def sign_up username='Michael', email='test@test.co.uk', password='110191'
  visit '/users/new'
  fill_in(:username, with: username)
  fill_in(:email, with: email)
  fill_in(:password, with: password)
  click_button 'Sign up'
end