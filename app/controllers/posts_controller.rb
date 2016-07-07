class PostsController < ApplicationController
  #respond_to :html
  #respond_to :js
  #def home
    #@posts = current_user.posts
  #end
  def index
    if params[:_method].present?
      @posts=current_user.posts
    else
      @posts=Post.all
    end
    #@post = Post.new
    #respond_to do |format|
      #format.html
      #format.js
    #end
    #respond_with(@posts)
  end
  def show
    @post=Post.find(params[:id])
    #respond_to do |format|
      #format.html
      #format.js
    #end
  end
  def new
    @post=Post.new
    #respond_to do |format|
      #format.html
      #format.js
    #end
  end
  
  def create
    @post=current_user.posts.new(post_params)
    #respond_to do |format|
     @post.save
    #format.html 
    #redirect_to posts_path
    #format.js
    @posts=Post.all
     #format.html { render :action => "new" } 
     #render 'posts/new'
    end
 #end 

  def edit
    @post=Post.find(params[:id]) 
  end
  def update
    @post=current_user.posts.find(params[:id])

    @post.update(post_params)
#   $customer = Customer::findOne($id);
#$customer->name = $name;
#$customer->email = $email;
#$customer->update();
      #redirect_to posts_path
    @posts=Post.all
    #where(:user_id=>current_user.id)
     # render 'posts/:id/edit'
    
  end
  def destroy
    @post=current_user.posts.find(params[:id])
    @post.destroy
    @posts=Post.all
    #redirect_to @post
  end
  
  private
  def post_params
    params.require(:post).permit(:name,:des,:type)
  end
end 

