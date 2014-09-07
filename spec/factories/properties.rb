# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :property do
    address "MyString"
    location nil
    user nil
    age 1
    rooms 1
    bathrooms 1
    bedrooms 1
    type_of_building "MyString"
    covered_area 1
    total_area 1
  end
end
