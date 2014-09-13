# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :publication_type do
    name "MyString"
    publication_days 1
    images_count false
    videos_count false
    cost "9.99"
    priority_on_search false
    highlight ""
  end
end
