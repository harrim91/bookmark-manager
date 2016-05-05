feature 'adding tags to the links' do
  scenario 'User can add a tag to a link while adding' do
    visit '/links'
    click_button('Add new link')
    fill_in(:title, with: 'Google')
    fill_in(:url, with: 'https://www.google.com')
    fill_in(:tag, with: 'search')
    click_button('Save link')

    within 'ul#links' do
      expect(page).to have_content('Tags: search')
    end
  end
end
