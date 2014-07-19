require 'rails_helper'

RSpec.describe "order_items/index", :type => :view do
  before(:each) do
    assign(:order_items, [
      OrderItem.create!(
        :order_id => 1,
        :variant_id => 2,
        :shopify_product_id => 3,
        :shopify_variant_id => 4,
        :unit_price => 1.5,
        :quantity => 5
      ),
      OrderItem.create!(
        :order_id => 1,
        :variant_id => 2,
        :shopify_product_id => 3,
        :shopify_variant_id => 4,
        :unit_price => 1.5,
        :quantity => 5
      )
    ])
  end

  it "renders a list of order_items" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
  end
end
