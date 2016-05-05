feature 'adding links' do
  scenario 'User can add new links ' do
    visit '/links'
    click_button('Add new link')
    fill_in(:title, with: 'Google')
    fill_in(:url, with: 'https://www.google.com')
    click_button('Save link')

    within 'ul#links' do
     expect(page).to have_content('Google')
     expect(page).to have_content('https://www.google.com')
   end
  end
end
