module RecentArticles
  class Article
    attr_accessor :updated, :title, :summary, :link
    def initialize(article_hash)
      @updated = DateTime.parse(article_hash['updated'])
      @title = article_hash['title']
      @link = article_hash['link']['href']
      @summary = article_hash['summary']
    end

    def to_hash
      { :updated => @updated, :title => @title, :summary => @summary, :link => {:href => @link } }
    end

    def to_json
      to_hash.to_json
    end

    def self.store_articles(articles)
      articles.each do |article|
        REDIS.lpush('articles', article.to_json)
      end
      REDIS.ltrim('articles', 0, 2)
      REDIS.set('latest_article_date', articles.last.updated) if articles.last
    end

    def self.retrieve_articles()
      return []
      begin
        REDIS.lrange('articles', 0, 2).map{|hash| self.new(JSON.parse(hash))}
      rescue Redis::CannotConnectError
        []
      end
    end
  end
end
