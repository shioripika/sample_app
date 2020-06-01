require 'test_helper'

class UsersActivationTest < ActionDispatch::IntegrationTest
  def setup
    @admin = users(:michael)
    @user_not_activated = users(:not_activated)
  end
  
  #/users で表示されるユーザー一覧に、有効でないユーザーが表示されないこと
  test "index should not include not activated user" do
    log_in_as(@admin)
    get users_path
    #有効でないユーザーのプロフィールページへのリンクが表示されていなければテスト成功
    assert_select 'a[href=?]', user_path(@user_not_activated), count: 0
  end  
  
  #/users/:id で有効でないユーザーを表示しようとしたときに、ログインにリダイレクトされること
  test "show user who is not activated should redirect to root" do
    get user_path(@user_not_activated)
    assert_redirected_to login_url
  end
end
