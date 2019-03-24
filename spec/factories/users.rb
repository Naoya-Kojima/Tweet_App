FactoryBot.define do
  factory :user do
    sequence(:name) { |n| "TEST_NAME#{n}" }
    sequence(:email) { |n| "TEST#{n}@example.com" }
    sequence(:password) { |n| "TEST_PASSWORD#{n}" }
    sequence(:password_confirmation) { |n| "TEST_PASSWORD#{n}" }
  end
end
