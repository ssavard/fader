FactoryGirl.define do
  factory :user do
    name     "Michael Hartl"
    email    "michael@example.com"
    password "foobar"
    password_confirmation "foobar"
  end
  
  factory :market do
    rank     "1"
    name    "New York"
    description "New York City area"
  end
end
