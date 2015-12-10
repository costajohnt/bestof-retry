class PostsController < ApplicationController
	
	def index
		@posts = Post.all
		render :index
	end

	def new
		@post = Post.new
		render :new
	end

	def create
		@posts = Post.all
		@post = Post.create(post_params)
		if @post.save
			redirect_to @post
		end
	end

	def show
		@post = Post.find(params[:id])
		render :show
	end

	def destroy
	    # save the id parameter
	    id = params[:id]
	    # find the post to delete by id
	    @post = Post.find(id)
	    # destroy the post
	    @post.destroy
	    # redirect to creatures index
	    redirect_to root_path
	    # ^ same as redirect_to "/creatures"
	end

	private

	def post_params
		params.require(:post).permit(:title)
	end

end

