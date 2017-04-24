ActiveRecord::Base.transaction do
  Faker::Config.locale = :ja
  FactoryGirl.reload
  include FactoryGirl::Syntax::Methods
  Genre.create(name: 'プログラミング')
  Genre.create(name: '本')
  100.times do
    create(:article_tag)
  end
  100.times do
    create(:article, genre_id: 2)
  end
end
