FactoryBot.define do
  factory :movie do
    title {'title'}
    rating {'G'}
    description {'description'}
    release_date {1.year.ago}
    director {'director'}
    id {'1'}
  end
 end 
