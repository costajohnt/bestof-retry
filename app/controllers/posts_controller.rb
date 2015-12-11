class PostsController < ApplicationController
	
	def index
		@posts = Post.all
		render :index

		if params[:search]
		     @posts = Post.search(params[:search]).order("created_at DESC")
		   else
		     @posts = Post.order("created_at DESC")
		   end
	end

	def new
		@post = Post.new
		render :new
	end

	def create
		@posts = Post.all
		@post = Post.create(post_params)
		@post.user_id = current_user.id
		if @post.save
			redirect_to @post
		end
	end

	def show
		@user = current_user
		@post = Post.find(params[:id])
		@comment = Comment.new
		@comments = Comment.where(post_id: @post).reverse_order.all
		render :show
	end

	def destroy
	    # find the post to delete by id
	    @post = Post.find(params[:id])
	    # destroy the post
	    @post.destroy
	    # redirect to creatures index
	    puts "im in post contrl"
	    redirect_to root_path
	    # ^ same as redirect_to "/creatures"
	end

	private

	def post_params
		params.require(:post).permit(:title)
	end

end
