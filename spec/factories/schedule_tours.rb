# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do

  factory :schedule_tour do
    email "user@example.com"
    first_name nil
    last_name nil
    phone nil
    ip_address "[127.0.0.1]"
    tour_date nil
    satisfaction nil
  end

end
