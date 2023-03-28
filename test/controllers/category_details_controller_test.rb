require 'test_helper'

class CategoryDetailsControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get category_details_index_url
    assert_response :success
  end
end
