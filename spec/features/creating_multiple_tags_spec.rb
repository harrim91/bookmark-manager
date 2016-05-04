feature 'creating multiple tags' do
  scenario 'adding tags to existing links' do
    add_link "bubble shooter", "http://www.shooter-bubble.com/", "bubbles"
    add_link "Doom", "http://doom.com/en-us/", "not bubbles"

    within 'form#Doom' do
      fill_in :new_tag, with: 'game'
      click_button 'Add Tag'
    end

    visit '/tags/game'
    expect(page).to have_content "Doom"
  end
end