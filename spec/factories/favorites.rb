FactoryBot.define do
  factory :favorite do
    user
    sequence(:lyrics_id) {|n| "1423878#{n}"}
    artist "whatever"
    track "nice"
  end
end
