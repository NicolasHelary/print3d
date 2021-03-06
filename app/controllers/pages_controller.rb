class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @bg_blue = false
  end

  def chat
  end

  def users
    @users = User.where(printer: false)
    @users_markers = @users.geocoded.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude,
        info_window: render_to_string(partial: "info_window", locals: { user: user }),
      }
    end

    @users_printers = User.where(printer: true)

    @users_printers_markers = @users_printers.geocoded.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude,
        info_window: render_to_string(partial: "info_window", locals: { user: user }),
      }
    end
  end
end
