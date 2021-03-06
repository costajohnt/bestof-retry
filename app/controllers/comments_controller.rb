class CommentsController < ApplicationController
	before_filter :authorize, only: [:create]

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
		@post = Post.friendly.find(params[:post_id])
		@comment = @post.comments.new(comment_params)
	  	@comment.user_id = current_user.id 
	  	if @comment.save
	  		@post.touch
	  		redirect_to :back
	  	else
	  		flash.now[:danger] = "error"
	  	end
	  end

	  def destroy
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
