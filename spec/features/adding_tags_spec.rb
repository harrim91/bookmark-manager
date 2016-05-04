feature 'adding tags to the links' do
  scenario 'User can add a tag to a link while adding' do
    visit '/links'
    click_button('Add new link')
    fill_in('Title', with: 'Google')
    fill_in('url', with: 'https://www.google.com')
    click_button('Save link')
    click_button('Add a tag')
    fill_in('tag', with: 'search')
    click_button('Save tag')
    expect(page).to have_content('tags : search')
  end
end
