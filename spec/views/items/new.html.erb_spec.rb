require 'rails_helper'

RSpec.describe "items/new", type: :view do
  before(:each) do
    assign(:item, Item.new(
      name: "MyString",
      description: "MyText",
      sale_price: "9.99",
      purchase_price: "9.99",
      status: "MyString"
    ))
  end

  it "renders new item form" do
    render

    assert_select "form[action=?][method=?]", items_path, "post" do

      assert_select "input[name=?]", "item[name]"

      assert_select "textarea[name=?]", "item[description]"

      assert_select "input[name=?]", "item[sale_price]"

      assert_select "input[name=?]", "item[purchase_price]"

      assert_select "input[name=?]", "item[status]"
    end
  end
end
