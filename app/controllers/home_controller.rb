class HomeController < ApplicationController
  before_action :require_user

  def index
    @message=Message.new
    @messages=Message.all
    @user=User.all
  end


end
