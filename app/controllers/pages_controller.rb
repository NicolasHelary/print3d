class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @bg_blue = false
  end

  def chat
  end
end
