class UrlsController < ApplicationController
  def index
    @urls = Url.all
  end

  def new
  end

  def create
    # @url = Url.create :link => params[:link]
    @url = Url.new :link => params[:link]
    @url.save
    redirect_to urls_path
  end

  def edit
    @url = Url.find(params[:id])
  end

  def show
    @url = Url.find(params[:id])
    # redirect_to @url.link
  end
  
  def redirect
    @url = Url.find(params[:id])
    redirect_to @url.link
  end
end
