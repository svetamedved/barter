class PostsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

def index
  @posts = Post.all
  @post = Post.new
  @post.user = current_user
end

def edit
end

def create
  # @post = Post.new
  # @post.user = current_user
  # @post.save
end

def update
  # if @post.update
  #   redirect_to @post, notice: 'Post was successfully updated.'
  # else
  #   render :edit
  # end
end

private

def set_post
  @post = Post.find(params[:id])
end

def posts_params
  params.require(:post).permit(:title, :text)
end

end
