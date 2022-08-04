FactoryBot.define do
  factory :administrator do
    sequence(:email) { |n| "admin#{n}@example.com" }
    password { "pw" }
    supended { false }
  end
end
