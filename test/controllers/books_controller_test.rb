require 'test_helper'

class BooksControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get edit" do
    get :edit
    assert_response :success
  end
    
  test "index should sort" do
    books = get(:index, {sort: "name"})
    assert(books[0].name=="The Little Prince")
  end

end
