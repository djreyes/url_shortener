class UrlsController < ApplicationController
  def index
    @urls = Url.all
  end

  def new
  end

  def create
    @url = Url.create :link => params[:link]
    redirect_to urls_path
  end

  def edit
  end

  def show
    @url = Url.find(params[:id])
    redirect_to @url.link
  end
end
