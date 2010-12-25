require 'test_helper'

class StudentFlowsTest < ActionDispatch::IntegrationTest

  fixtures :students
 
  test "login and browse site" do
 
    # User one logs in
    one = login(:one)
    # User two logs in
    two = login(:two)
 
    # Both are now available in different sessions
    assert_equal 'Welcome one!', one.flash[:notice]
    assert_equal 'Welcome two!', two.flash[:notice]
 
    # User one can browse site
    one.browses_site
    # User two can browse site as well
    two.browses_site
 
    # Continue with other assertions
  end
 
  private
 
  module CustomDsl
    def browses_site
      get "/home/index"
      assert_response :success
      assert assigns(:products)
    end
  end
 
  def login(user)
    open_session do |sess|
      sess.extend(CustomDsl)
      u = students(user)
      sess.https!
      sess.post "/login", :email => u.email, :crypted_password => u.crypted_password
      assert_equal '/bookings', path
      sess.https!(false)
    end
  end

end
