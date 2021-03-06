require 'rails_helper'
require_relative '../helpers/helper_methods.rb'

feature 'comments' do
 
  
  scenario 'allows users to leave a comments on pictures' do
    sign_in
    add_picture

    visit '/pictures'
    click_link 'Comment'
    save_and_open_page
    fill_in "Comment", with: "TOTES!"
    click_button 'New Comment'

    expect(page).to have_content('TOTES!')
  end

end