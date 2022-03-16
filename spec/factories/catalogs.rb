FactoryBot.define do
  factory :catalog do
    show_id { "MyString" }
    platform { "MyString" }
    title { "MyString" }
    director { "MyString" }
    cast { "MyString" }
    country { "MyString" }
    date_added { "2022-03-16" }
    release_year { 1 }
    rating { "MyString" }
    duration { "MyString" }
    listed_in { "MyString" }
    description { "MyText" }
  end
end
