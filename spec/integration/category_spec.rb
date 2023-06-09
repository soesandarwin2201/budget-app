require 'rails_helper'

RSpec.describe 'Food Index', type: :system do
  before(:each) do
    @user = User.create(name: 'anye3', email: 'wolo22001@gmail.com', password: '2e2010510',
                        password_confirmation: '2e2010510')

    @category = Category.create(user_id: @user.id, name: 'pizza',
                                icon: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-Qz_PXUP8Lsb3k6b6tTASlpGQYYCURKlmBA&usqp=CAU')
  end

  it 'Sign up with a user' do
    visit new_user_registration_path

    sleep(1)
    fill_in 'Name', with: @user.name
    fill_in 'Email', with: @user.email
    sleep(2)
    fill_in 'Password', with: @user.password
    fill_in 'Password confirmation', with: @user.password_confirmation
    click_button 'Sign up'
  end

  it 'User should log in' do
    visit new_user_session_path
    fill_in 'Email', with: @user.email
    sleep(2)
    fill_in 'Password', with: @user.password
    click_button 'Log in'
    sleep(5)
  end

  it 'add the category' do
    visit new_category_path
    fill_in 'name', with: 'pizza'
    fill_in 'icon', with: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-Qz_PXUP8Lsb3k6b6tTASlpGQYYCURKlmBA&usqp=CAU'
    click_button 'Add category'
    expect(current_path).to eq(categories_path)
    expect(page).to have_text('Total spent:$')
  end
end
