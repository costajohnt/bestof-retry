class CommentsController < ApplicationController

	def upvote 
	  @comment = Comment.find(params[:id])
	  @comment.upvote_by current_user
	  redirect_to :back
	end  

	def downvote
	  @comment = Comment.find(params[:id])
	  @comment.downvote_by current_user
	  redirect_to :back
	end
	
	def index
		@comments = Comment.all
	end

	def new
		@comment = Comment.new
		render :new
	end

	def create
	  @comment = Comment.new(comment_params)
	  @comment.user_id = current_user.id #or whatever is you session name
	  if @comment.save
	    redirect_to :back
	  else
	    flash.now[:danger] = "error"
	  end
	end

	def destroy
	    # # find the post to delete by id
	    # @comment = Comment.find(params[:id])
	    # # destroy the post
	    # @comment.destroy
	    # # redirect to creatures index
	    # redirect_to :back
	    # # ^ same as redirect_to "/creatures"

	    post_id = params[:post_id]
	    puts "post id:" + post_id
	    @comment = Comment.find(params[:id])
	    @post = Post.friendly.find(post_id)
	    @comment.delete
	    flash[:success] = "Post destroyed"
	    redirect_to :back
	end

	private

	def comment_params
		params.require(:comment).permit(:title, :location, :post_id, :user_id)
	end
end
