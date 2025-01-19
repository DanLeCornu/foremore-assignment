class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  helper_method :safe_params

  def index
  end

  private

  def safe_params
    params.permit(:page, :take, :search).to_h
  end
end
