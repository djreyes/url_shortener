class UrlsController < ApplicationController
  def index
    @urls = Url.all
  end

  def new
  end

  def create
    @url = Url.new :link => params[:link], :short => params[:short]
    if @url.save
      flash[:success] = "URL saved!"
    else
      flash[:error] = "Original URL link is required and custom shortcode must be unique."
    end
    redirect_to urls_path
  end

  def edit
    @url = Url.find(params[:id])
  end
  
  def update
    @url = Url.find(params[:id])
  end

  def show
    @url = Url.find(params[:id])
    @url.increment_counter
    @url.save
    redirect_to @url.link
  end
  
end
