class ApplicationController < ActionController::Base
    before_action :authenticate_user!
end
class GoodsController < ApplicationController
  def new
  end
end