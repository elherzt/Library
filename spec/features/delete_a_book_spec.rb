require "spec_helper"

feature "checking delete a book" do

  scenario "deleting a existent book", :js, :selenium do
    book = create(:book) 
    visit book_path(book)
    click_on "Delete"
    page.should_not have_content(book[:name])
  end
end
