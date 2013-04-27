# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :library do
    name "MyString"
    description "MyText"
    website_url "MyString"
    doc_url "MyString"
    github_url "MyString"
  end
end
