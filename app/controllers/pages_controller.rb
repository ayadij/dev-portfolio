class PagesController < ApplicationController
  def home
    @posts = Blog.all #model or actual data. give connection to the database. storing all the blog data in the variable called posts
    @skills = Skill.all 
  end

  def about
  end

  def contact
  end

  def tech_news
    @tweets = SocialTool.twitter_search
  end

end
