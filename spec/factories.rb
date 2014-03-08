FactoryGirl.define do
  factory :user do
    name     "Mark Hustad"
    email    "hustad@example.com"
    password "foobar"
    password_confirmation "foobar"
  end
end