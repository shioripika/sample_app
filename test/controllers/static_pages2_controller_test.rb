require 'test_helper'

class StaticPages2ControllerTest < ActionDispatch::IntegrationTest
  
   test "should get home" do
    get root_path
    assert_response :success
    assert_select "title",  "あぷりだお"
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "Help | あぷりだお"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | あぷりだお"
  end

  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "Contact | あぷりだお"
  end
end