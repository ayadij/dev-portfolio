class BlogsController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update, :destroy, :toggle_status]

  # GET /blogs
  # GET /blogs.json
  def index
    @blogs = Blog.all
    @page_title = "My Portfolio Blog"
  end

  # GET /blogs/1
  # GET /blogs/1.json # method also called action
  def show
    @page_title = @blog.title
    @seo_keywords = @blog.body #seach engine optimization
  end

  # GET /blogs/new                      #new vs create
  def new
    @blog = Blog.new
  end

  # GET /blogs/1/edit                   
  def edit
  end

  def toggle_status
    if @blog.draft?
      @blog.published!
    elsif @blog.published?
      @blog.draft!
    end
    redirect_to blogs_url, notice: 'Post status has been updated.'
  end



  # POST /blogs
  # POST /blogs.json              create has more logic in it than new bc it actually creates and takes data in. takes title and body input params and creates . the workflow is new to create then performs validation logic. if valid, then format html (make avail in browser) and redirect user.        new-create  empty forum - stored      edit-update   user input-connection to database
  def create
    @blog = Blog.new(blog_params)

    respond_to do |format|
      if @blog.save
        format.html { redirect_to @blog, notice: '*Blog was successfully created.*'}
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /blogs/1
  # PATCH/PUT /blogs/1.json
  def update
    respond_to do |format|
      if @blog.update(blog_params)
        format.html { redirect_to @blog, notice: 'Blog was successfully updated.' }
        format.json { render :show, status: :ok, location: @blog }
      else
        format.html { render :edit }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blogs/1l
  # DELETE /blogs/1.json
  def destroy
    @blog.destroy
    respond_to do |format|
      format.html { redirect_to blogs_url, notice: 'Blog post successfully removed.' }
      format.json { head :no_content } 
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog
      @blog = Blog.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blog_params
      params.require(:blog).permit(:title, :body)
    end
end

#rails works on convention over configuration
#a lot processes in the background for example ew
