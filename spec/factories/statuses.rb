# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :status do
    downloads 1
    watchers 1
    forks 1
    issues 1
    
    library
  end
end
