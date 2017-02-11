FactoryGirl.define do
  sequence(:email) { |n| "user#{n}@example.com" }

  factory :user do
    email
    password "Passphrase123"
    first_name "Mike"
    last_name "tester"
    admin false
  end

  factory :admin, class: User do
    email
    password "Qwertyuiop123"
    admin true
    first_name "Admin"
    last_name "User"
  end
end
