require 'test_helper'

class InsclonesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get insclones_index_url
    assert_response :success
  end

end
