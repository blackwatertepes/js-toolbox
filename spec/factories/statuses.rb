# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :status do
    downloads { rand(1000) }
    watchers { rand(1000) }
    forks { rand(100) }
    issues { rand(100) }
    
    library
  end
end
