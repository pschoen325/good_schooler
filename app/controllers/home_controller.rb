class HomeController < ApplicationController
  before_action :current_name, only: [:index]
  layout 'simple', only: [:index]
  def index
    @users = User.all
    render :index
    redirect_to "http://google.com"
    redirect_to "http://facebook.com"
  end
  def directory_listing
    @users = User.where(code_school_id: 1)
  end
  def current_name
    @name = "brunk"
  end
  # def find_page
  #   if params[:anything_else] == *
  # end
end
