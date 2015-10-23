class PostsController < ApplicationController
  def index  
  	@posts = Post.all
  end  
  def show
  	@post = Post.find(params[:id])
  end
  def new
  	@post = Post.new
  end
  def create
    @post = Post.create(post_params)
    redirect_to posts_path
  end
  def edit  
    @post = Post.find(params[:id])
  end
  def update
  	@post = Post.find(params[:id]).update(post_params)
  	redirect_to posts_path
  end
  def destroy
  	@post = Post.find(params[:id])
  	if @post.destroy
  	  flash[:notice] = "Post deleted successfully."
  	else
  	  flash[:alert] = "The was a problem deleting the post."	
  	end
  	redirect_to :back
  end  	
  private
    def post_params
      params.require(:post).permit(:user_id, :content)
     end
end