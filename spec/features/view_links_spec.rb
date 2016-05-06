feature 'Viewing links' do
  scenario 'User can see links on the links page' do
    sign_up
    Link.create(url: 'http://www.makersacademy.com', title: 'Makers Academy')

    visit '/links'
    expect(page.status_code).to eq 200

    within 'ul#links' do
      expect(page).to have_content('Makers Academy')
    end
  end
end
