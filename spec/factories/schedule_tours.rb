# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :schedule_tour do
    email "MyString"
    first_name "MyString"
    last_name "MyString"
    phone "MyString"
    ip_address "MyString"
    tour_date "2012-07-02"
    satisfaction 1
  end
end
