class ShorturlsController < ApplicationController
  def index
    @short_urls = Shorturl.all
  end

  def redirect
    @link_url = Shorturl.where(:short_url => params[:short_url]).first
    redirect_to @link_url.input_url
  end
end
