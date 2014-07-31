# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :student do
    github_name "MyString"
    repository "MyString"
    last_commit "MyString"
  end
end
