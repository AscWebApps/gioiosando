class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]


  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    @comment = @post.comments.build
  end

  def edit
    @post = Post.find(params[:id]) 
  end 

 
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
  
   if @post.save
    redirect_to @post
   else
    render 'new'
   end

  end

  def update
   @post = Post.find(params[:id])
   if @post.update(post_params)
     redirect_to @post
   else
     render 'edit'
   end

  end

  def destroy
   @post = Post.find(params[:id])
   @post.destroy
   redirect_to posts_path
 
  end

 

   private
  
  def post_params
    params.require(:post).permit(:title, :body, :meta_title, :meta_description, :user_id, {category_ids:[]})
  end

end
