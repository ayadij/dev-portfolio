class PortfoliosController < ApplicationController
  before_action :set_blog,only: [:show, :edit, :update, :destroy]
  def index
    @portfolio_items = Portfolio.all
  end


  def new
    @portfolio_items = Portfolio.new
  end

  def show 
  end


  def edit
  end


  def create
  end


  def update
  end


  def destroy
  end

  



  private

  def set_blog
  end


  def blog_params
  end



end
