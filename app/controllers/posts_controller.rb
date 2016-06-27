class PostsController < ApplicationController
  def home
    @posts = current_user.posts
  end
  def index
    @posts=Post.all
  end
  def show
    @post=Post.find(params[:id])
  end
  def new
    @post=Post.new
  end
  def edit
  @post=Post.find(params[:id])
  end
  def create
  @post=current_user.posts.new(post_params)
  if @post.save
  redirect_to controller: 'posts', action: 'index'
  else
    render 'posts/new'
  end
 end
 
  def update
  @post=current_user.posts.find(params[:id])
 
  if @post.update(post_params)
    redirect_to controller: 'posts', action: 'show'
  else
    render 'posts/:id/edit'
  end
 end
 
  def destroy
    @post=current_user.posts.find(params[:id])
    @post.destroy
    redirect_to controller: 'posts' ,action: 'index'
  end
  
  private
  def post_params
    params.require(:post).permit(:name,:des,:type)
  end
end 

