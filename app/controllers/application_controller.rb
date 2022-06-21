class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :set_bg_color

  def set_bg_color
    @bg_blue = user_signed_in? && current_user.printer
  end
end
