def add_link (title, url, tag)
  visit '/links'
  click_button('Add new link')
  fill_in(:title, with: title)
  fill_in(:url, with: url)
  fill_in(:tag, with: tag)
  click_button('Save link')
end
