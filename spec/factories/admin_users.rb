# frozen_string_literal: true

FactoryBot.define do
  factory :admin_user do
    email    { 'this@that.com' }
    password { 'super-secret' }
  end
end
