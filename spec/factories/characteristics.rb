# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :characteristic do
    name "MyString"
    type ""
    string "MyString"
    integer "9.99"
    boolean false
    values "MyString"
  end
end
