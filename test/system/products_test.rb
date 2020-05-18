require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit '/'
    assert_selector "h1", text: "Awesome Products"
    assert_selector ".product-body", count: Product.count
  end

  test "lets a signed in user create a new product" do
    login_as users(:henry)
    visit "/products/new"

    fill_in "product_name", with: "Pittsburg powder"
    fill_in "product_tagline", with: "Get happy"
    click_on "Create Product"

    assert_equal root_path, page.current_path
    assert_text "Pittsburg powder"
  end

  test "checking product tagline" do
    visit '/'
    assert_selector '.product-body', text: "Roadstr\nRent a vintage car"
  end

end
