# location: spec/feature/integration_spec.rb
require 'rails_helper'

# title integration test
RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'JK Rowling'
    fill_in 'Price', with: '20.50'
    #fill_in 'publish_date', with: '2000-08-10'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end
end

# author integration test
RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'JK Rowling'
    fill_in 'Price', with: '20.50'
    #fill_in 'publish_date', with: '2000-08-10'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('JK Rowling')
  end
end

# price integration test
RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'JK Rowling'
    fill_in 'Price', with: '20.50'
    #fill_in 'publish_date', with: '2000-08-10'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('JK Rowling')
  end
end

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'potter'
    fill_in 'Author', with: 'JK Rowling'
    fill_in 'Price', with: '20.50'
    #fill_in 'publish_date', with: '2000-08-10'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('potter')
  end
end
RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'Rowling'
    fill_in 'Price', with: '20.50'
    #fill_in 'publish_date', with: '2000-08-10'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('Rowling')
  end
end


# published date integration test
RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry'
    fill_in 'Author', with: 'JK Rowling'
    fill_in 'Price', with: '20.50'
    #fill_in 'publish_date', with: '2000-08-10'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry')
  end
end