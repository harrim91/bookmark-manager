feature 'Creating links' do

  scenario 'User can add links' do
    visit '/links/new'
    fill_in 'title', with: 'Michael Harrison: The Story of a True Hero'
    fill_in 'url', with: 'http://www.mh.com'
    click_button 'Add'

    expect(current_path).to eq '/links'

    within 'ul#links' do
      expect(page).to have_content 'Michael Harrison: The Story of a True Hero'
    end
  end

end
