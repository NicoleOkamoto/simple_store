require "test_helper"

class ProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @category = Category.create(name: "Electronics")
    @product = Product.create(title: "Sample Product", price: 19.99, stock_quantity: 10, category: @category)
  end

  test "should get index" do
    get products_url
    assert_response :success
  end
end
