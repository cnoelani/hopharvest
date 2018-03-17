#app/controllers/blog_controller.rb

class BlogController < ApplicationController
  before_action :find_blog, only: [:edit, :update, :show, :delete]

  # Index action to render all blog
  def index
    @blog = Blog.all
  end

  # New action for creating blog
  def new
    @blog = Blog.new
  end

  # Create action saves the blog into database
  def create
    @blog = Blog.new
    if @blog.save
      flash[:notice] = "Successfully created blog!"
      redirect_to blog_path(@blog)
    else
      flash[:alert] = "Error creating new blog!"
      render :new
    end
  end

  # Edit action retrives the blog and renders the edit page
  def edit
  end

  # Update action updates the blog with the new information
  def update
    if @blog.update_attributes(blog_params)
      flash[:notice] = "Successfully updated blog!"
      redirect_to blog_path(@blog)
    else
      flash[:alert] = "Error updating blog!"
      render :edit
    end
  end

  # The show action renders the individual blog after retrieving the the id
  def show
  end

  # The destroy action removes the blog permanently from the database
  def destroy
    if @blog.destroy
      flash[:notice] = "Successfully deleted blog!"
      redirect_to blog_path
    else
      flash[:alert] = "Error updating blog!"
    end
  end

  private

  def blog_params
    params.require(:blog).permit(:title, :body)
  end

  def find_blog
    @blog = blog.find(params[:id])
  end
end