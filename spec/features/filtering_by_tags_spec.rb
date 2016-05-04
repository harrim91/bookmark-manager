feature 'filtering by tags' do
  scenario 'return links with bubbles tag' do

    add_link "bubble shooter", "http://www.shooter-bubble.com/", "bubbles"
    add_link "Doom", "http://doom.com/en-us/", "not bubbles"

    visit '/tags/bubbles'
    within "ul#links" do
      expect(page).to have_content "bubble shooter"
      expect(page).not_to have_content "Doom"
    end
  end
end
