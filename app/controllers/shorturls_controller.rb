class ShorturlsController < ApplicationController
  def index
    @short_urls = Shorturl.all
    @shorturl = Shorturl.new
  end

  def create
    @shorturl = Shorturl.new( shorturl_params )
    @shorturl.short_url = SecureRandom.urlsafe_base64(4)

    if @shorturl.save
      redirect_to shorturls_path
    else
      render shorturls_path
    end
  end

  def redirect
    @link_url = Shorturl.where(:short_url => params[:short_url]).first
    @link_url.link_counter += 1
    @link_url.save

    redirect_to @link_url.input_url
  end

  def destroy
    @short_url = Shorturl.find(params[:id])
    @short_url.destroy
    redirect_to shorturls_path
  end

  private
    def shorturl_params
      params.require(:shorturl).permit(:input_url, :short_url)
    end
end
