FactoryGirl.define do
  factory :article do
    genre_id 1
    title { Faker::Name.title }
    content { Faker::Lorem.sentence }
  end
end
