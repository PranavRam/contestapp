# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :contest do
    name "MyString"
    product_id 1
    start_date "2014-07-20 19:53:18"
    end_date "2014-07-20 19:53:18"
    max_results 1
    order_id 1
  end
end
