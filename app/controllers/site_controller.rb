class SiteController < ApplicationController

  def index
  	@disable_nav = true
    render :index
  end

end