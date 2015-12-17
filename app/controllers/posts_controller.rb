class PostsController < ApplicationController
	
	def index
		if params[:search]
			@posts = Post.search(params[:search]).order("created_at DESC")
		else
			@posts = Post.order("created_at DESC")
		end

		if @posts.length == 1

			redirect_to @posts.first
		end
	end

	def new
		@post = Post.new
		render :new
	end

	def create
		@post = Post.create(post_params)
		@post.user_id = current_user.id
		if @post.save
			redirect_to @post
		end
	end

	def show
		@disable_nav = true
		@user = current_user
		@post = Post.friendly.find(params[:id])
		@comment = Comment.new
		@comments = Comment.where(post_id: @post).reverse_order
		render :show
	end

	def destroy
	    @post = Post.friendly.find(params[:id])
	    @post.destroy
	    redirect_to root_path
	end

	private

	def post_params
		params.require(:post).permit(:title)
	end

end
