require "application_system_test_case"

class CartsTest < ApplicationSystemTestCase
  setup do
    @cart = carts(:one)
  end

  test "visiting the index" do
    visit carts_url
    assert_selector "h1", text: "Carts"
  end

  test "creating a Cart" do
    visit carts_url
    click_on "New Cart"

    fill_in "Datetime", with: @cart.datetime
    fill_in "Num", with: @cart.num
    fill_in "Product", with: @cart.product_id
    fill_in "User", with: @cart.user_id
    click_on "Create Cart"

    assert_text "Cart was successfully created"
    click_on "Back"
  end

  test "updating a Cart" do
    visit carts_url
    click_on "Edit", match: :first

    fill_in "Datetime", with: @cart.datetime
    fill_in "Num", with: @cart.num
    fill_in "Product", with: @cart.product_id
    fill_in "User", with: @cart.user_id
    click_on "Update Cart"

    assert_text "Cart was successfully updated"
    click_on "Back"
  end

  test "destroying a Cart" do
    visit carts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cart was successfully destroyed"
  end
end
