FactoryBot.define do
  factory :user do
    id { 1 }
    name { 'User' }
    email { 'user@mail.com' }
    password { 'password' }
    password_confirmation { 'password' }
  end
end
