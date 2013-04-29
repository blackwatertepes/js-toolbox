# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :category do
    sequence(:name) {|n| "js_library#{n}" }
    sequence(:full_name) {|n| "JS Library #{n}" }
  end
end
