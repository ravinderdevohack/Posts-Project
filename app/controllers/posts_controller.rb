class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @action = 'new'
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    # byebug
    if @post.save
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
    @post.destroy

    redirect_to posts_path

  end

  private
  def post_params
    params.require(:post).permit(:title, :description, :user_id)
    # byebug
  end
end
