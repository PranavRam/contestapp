require 'rails_helper'

RSpec.describe "order_items/show", :type => :view do
  before(:each) do
    @order_item = assign(:order_item, OrderItem.create!(
      :order_id => 1,
      :variant_id => 2,
      :shopify_product_id => 3,
      :shopify_variant_id => 4,
      :unit_price => 1.5,
      :quantity => 5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/5/)
  end
end
