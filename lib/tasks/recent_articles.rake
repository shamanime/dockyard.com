namespace :recent_articles do
  task :retrieve_and_store => :environment do
    print 'Retrieving recent articles...'
    STDOUT.flush
    feed_processor = RecentArticles::FeedProcessor.new
    articles = feed_processor.unprocessed_articles
    puts 'done.'

    print 'Saving articles...'
    STDOUT.flush
    RecentArticles::Article.store_articles(articles)
    puts 'done.'
  end
end
