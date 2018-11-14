FactoryBot.define do
  factory :record do
    title { "MyString" }
    content { "MyText" }
    type { "" }
    latitude { "9.99" }
    longitude { "9.99" }
    date { "2018-11-13 20:34:03" }
    privacy { "" }
  end
end
