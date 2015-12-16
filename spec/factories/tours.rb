FactoryGirl.define do
  factory :tour do
  title "My tour"
  teaser "My teaser"
  description "My description"
  url "http://www.google.com/maps/"
  categories {[FactoryGirl.build(:category)]}

  end
end
