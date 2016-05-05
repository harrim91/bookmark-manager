feature 'adding tags to the links' do
  before do
    visit '/links'
    click_button('Add new link')
    fill_in(:title, with: 'Google')
    fill_in(:url, with: 'https://www.google.com')
  end

  scenario 'User can add a tag to a link while adding' do
    fill_in(:tag, with: 'search')
    click_button('Save link')

    within 'ul#links' do
      expect(page).to have_content('Tags: search')
    end
  end

  scenario 'adding multiple comma seperated tags when creating a link' do
    fill_in(:tag, with: 'search, handy')
    click_button('Save link')

    within 'ul#links' do
      expect(page).to have_content('Tags: search handy')
    end
  end

  scenario 'adding comma separated tags to existing links' do
    fill_in(:tag, with: 'search')
    click_button('Save link')
    within 'form#Google' do
        fill_in(:tag, with: 'handy, cool, essential')
        click_button ('Add tag')
    end
    within 'ul#links' do
      expect(page).to have_content('Tags: search handy cool essential')
    end
  end
end
