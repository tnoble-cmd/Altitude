require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "home page loads" do
    get "/"
    assert_response :success
  end

  test "about us page loads" do
    get "/about_us"
    assert_response :success
  end

  test "projects page loads" do
    get "/projects"
    assert_response :success
  end

  test "contact page loads" do
    get "/contact"
    assert_response :success
  end
end
