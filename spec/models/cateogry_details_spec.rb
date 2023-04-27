require 'rails_helper'

RSpec.describe CategoryDetail, type: :model do
  subject do
    user = User.new(name: 'soe', email: 'soesandarwin2201@gmail', password: '2343545778')
    category = Category.new(user_id: user.id, name: 'home', icon: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-Qz_PXUP8Lsb3k6b6tTASlpGQYYCURKlmBA&usqp=CAU')
    CategoryDetail.new(name: 'home', amount: '21000000', category_id: category.id, author_id: user.id)
  end

  before { subject.save }

  describe 'test for the association and model' do
    it 'category detail should not be valid, user and category  must exist' do
      expect(subject).to_not be_valid
    end
  end
end
