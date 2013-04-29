# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :library do
    author "joeSmith"
    name "library"
    description "This is a library"
    website_url "http://google.com"
    doc_url "http://google.com"
    sequence(:github_id) {|n| n }
        
    category
  end
end
