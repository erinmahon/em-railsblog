class PostsController < ApplicationController
def index  
  	@posts = Post.all
  end  
  def show
  	@post = Post.find(params[:id])
  end
  def update  
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
end


