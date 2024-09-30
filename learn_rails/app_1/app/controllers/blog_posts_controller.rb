class BlogPostsController < ApplicationController
  def index
    # instance variable used, cause rails will pass it to the view
    # and we can access it in the view
    @blog_posts = BlogPost.all
  end

  def show
    @blog_post = BlogPost.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to root_path
  end

  def new
    # the form in the view will use this instance variable
    # so rails will pass it to the view
    # than we can access it in the view
    # and the form will use this instance variable to create new blog post
    @blog_post = BlogPost.new
  end

  def create
    @blog_post = BlogPost.new(blog_post_params)
    if @blog_post.save
      redirect_to @blog_post
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def blog_post_params
    params.require(:blog_post).permit(:title, :body)
  end
end