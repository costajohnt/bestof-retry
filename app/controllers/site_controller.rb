class SiteController < ApplicationController

  def index
  	@posts = Post.all
  	@newposts = @posts.limit(5).reverse_order
  	@popularposts = Post.order("comments_count, created_at DESC").limit(5).reverse_order
  	# FILTER BELOW NEEDS WORK
  	@recentposts = Post.includes(:comments).order("comments.created_at desc").limit(5).reverse_order  
  	@disable_nav = true
    render :index
  end

end