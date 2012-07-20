class UrlsController < ApplicationController
  def index
    @urls = Url.all
  end

  def new
  end

  def create
  end

  def edit
  end
end
