feature 'Adding Tags' do
  scenario 'can add tag whilst adding new link' do
    visit '/links/new'
    fill_in :url, with: 'http://www.gorillas.org/'
    fill_in :title, with: 'Gorilla Adoption'
    fill_in :tag, with: 'Animals'
    click_button 'Save link'
    within 'ul#links' do
      expect(page).to have_content 'Animals'
    end
  end
end