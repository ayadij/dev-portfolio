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
    @portfolio_items = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle, :body))

    respond_to do |format|
      if @portfolio_items.save
        format.html { redirect_to @portfolio_path, notice: 'Your portfolio item is now live.'}
      else
        format.html { render :new }
      end
    end
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
