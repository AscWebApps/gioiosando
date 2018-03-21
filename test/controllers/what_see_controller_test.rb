require 'test_helper'

class WhatSeeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get what_see_index_url
    assert_response :success
  end

end
