class Article < ApplicationRecord
  def self.news_title(search)
    agent = Mechanize.new
    array = params[:@title]
    array.each do |index|
      page = agent.get"https://search.naver.com/search.naver?sm=tab_hty.top&where=news&ie=utf8&query=#{search}&start=#{index}"
      list = page.search("a._sp_each_title").map(&:text)
      # amount = page.search("div.title_desc all_my span")
      # puts amount
      list.each do |title|
        articles = Article.create(title: "#{title}")
      end
    end
  end
end
