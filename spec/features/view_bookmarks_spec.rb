feature 'View Bookmarks' do 
  scenario 'view your saved bookmarks' do
    visit('/')
    click_button 'List Saved Bookmarks'
    expect(page).to have_content 'Your saved bookmarks are listed below'
  end
end 
