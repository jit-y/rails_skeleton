class ExampleJob < ApplicationJob
  queue_as :default

  def perform(*_args)
    Article.create(genre_id: 1, title: 'sidekiq', content: 'content')
  end
end
