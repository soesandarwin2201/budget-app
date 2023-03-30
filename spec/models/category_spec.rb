require 'rails_helper'

RSpec.describe Category, type: :model do 
 subject do
 user =  User.new(name: 'soe', email: 'soesandarwin2201@gmail', password: '2343545778')
  Category.new(user_id: user.id ,name:'home', icon: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-Qz_PXUP8Lsb3k6b6tTASlpGQYYCURKlmBA&usqp=CAU')
 end

  before { subject.save }

  it 'category should not be valid, user must exist' do 
  expect(subject).to_not be_valid 
 end
 
end