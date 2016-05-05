feature 'Filtering tags' do
  before do
    add_link('Google', 'http://www.google.com', 'search')
    add_link('BBC', 'http://www.bbc.co.uk', 'news')
  end

  scenario 'user can filter links by tags' do
    fill_in(:filter, with: 'news')
    click_button('Filter')
    within 'ul#links' do
      expect(page).to have_content('BBC')
      expect(page).not_to have_content('Google')
    end
  end

  scenario 'users searches for a tag that does not exist' do
    fill_in(:filter, with: 'sport')
    click_button('Filter')
    within 'ul#links' do
      expect(page).not_to have_content('BBC')
      expect(page).not_to have_content('Google')
    end
  end
end
