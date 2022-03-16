FactoryBot.define do
  factory :catalog do
    sequence(:show_id) { |n| "s #{n}" }
    platform { ['Movie', 'TV Box'].sample }
    title { Faker::Movie.title }
    director { Faker::Name.name }
    cast { Faker::Name.name }
    country { Faker::Address.country }
    date_added { Faker::Date.between(from: '2014-09-23', to: '2014-09-25') }
    release_year { rand(2000..2022) }
    sequence(:rating) { |n| "R #{n}" }
    duration { "#{rand(80..150)} min" }
    listed_in { Faker::Movie.quote }
    description { Faker::Lorem.paragraphs }
  end
end
