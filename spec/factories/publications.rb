# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :publication do
    type ""
    start_date "2014-09-06"
    end_date "2014-09-06"
    active false
    property nil
  end
end
