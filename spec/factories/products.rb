# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :product do
    name "MyString"
    shopify_product_id 1
    last_shopify_sync "2014-07-19 14:43:17"
  end
end
