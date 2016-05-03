feature 'Viewing bookmarks' do
  scenario 'Shows saved bookmarks' do
    Link.create(url: 'http://www.iammatthewward.com', title: 'I am Matt the Ward')
    visit '/links'
    expect(page.status_code).to eq 200

    within 'ul#links' do
      expect(page).to have_content 'I am Matt the Ward'
    end
  end
end