require 'rails_helper'

RSpec.describe "items/index", type: :view do
  before(:each) do
    assign(:items, [
      Item.create!(
        name: "Name",
        description: "MyText",
        sale_price: "9.99",
        purchase_price: "9.99",
        status: "Status"
      ),
      Item.create!(
        name: "Name",
        description: "MyText",
        sale_price: "9.99",
        purchase_price: "9.99",
        status: "Status"
      )
    ])
  end

  it "renders a list of items" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("9.99".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("9.99".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Status".to_s), count: 2
  end
end
