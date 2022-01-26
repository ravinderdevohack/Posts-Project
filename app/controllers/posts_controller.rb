class PostsController < ApplicationController
  # before_action :authenticate_user!
  def index
    @posts = Post.all.order(:id)

  end

  def new
    @action = 'new'
    @post = Post.new
  
  end

  def create
    @post = current_user.posts.new(post_params)
    # byebug
    if @post.save!
      PostEmail.new(@post).send_email
      redirect_to posts_path
    else
      render "new"
    end
  end

  def show
    @post = Post.find(params[:id])
    # render json: @post, status: 200
  end

  def edit
    @action ='edit'
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to posts_path
    else
      render "edit"
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.update(display: 2)

    redirect_to posts_path

  end

  def search
    @posts = FindPost.new(params[:title]).find
  end

  def draft
    @post = current_user.posts.new(post_params)
    if @post.save!
      @post.update(display: 1)
      redirect_to posts_path
    else 
      render "new"
    end
  end

  private
  def post_params
    params.require(:post).permit(:title, :description, :file)
  end
end
