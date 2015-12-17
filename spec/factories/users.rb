FactoryGirl.define do

  factory :user do
    email {FFaker::Internet.email}
    password {Devise.friendly_token.first(8)}
  end

  factory :confirmed_user, :parent => :user do
    after(:create) { |user| user.confirm! }
  end
  
end
