require 'faker'

FactoryGirl.define do
  factory :book do
    name   Faker::Name.name
    author Faker::Name.name
    editorial Faker::Company.name
    isbn      Faker::Code.isbn
    year      2003
    pages     356
  end
end
