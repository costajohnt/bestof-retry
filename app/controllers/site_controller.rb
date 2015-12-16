class SiteController < ApplicationController

  def index
  	@posts = Post.all
  	@newposts = @posts.limit(5).reverse_order
  	@popularposts = Post.order("comments_count, created_at DESC").limit(5).reverse_order
  	# FILTER BELOW NEEDS WORK
  	# @activeposts = Post.includes(:comments).order("comments.updated_at ASC").limit(5)
  	@activeposts = Post.order('updated_at DESC').limit(5)
  	@disable_nav = true
    render :index
  end

end