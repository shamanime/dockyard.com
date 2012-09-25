require 'httparty'
module RecentArticles
  class FeedProcessor
    include HTTParty
    format :xml

    def retrieve_feed
      self.class.get('http://reefpoints.dockyard.com/atom.xml')
    end

    def retrieve_articles
      retrieve_feed['feed']['entry']
    end

    def latest_article_date
      date = REDIS.get('latest_article_date')
      date.nil? ? nil : DateTime.parse(date)
    end

    def unprocessed_articles
      articles = retrieve_articles.map{|a| Article.new(a)}.sort{|x,y| x.updated <=> y.updated}
      if latest_article_date
        articles = articles.select{ |article| (article.updated) > latest_article_date}
      end

      articles
    end

  end
end
