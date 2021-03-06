class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  helper_method :cart

  def current_cart
    session[:cart] ||= []
  end

  def cart
    @cart = session[:cart] || []
    session[:cart] = @cart
  end
  protect_from_forgery with: :exception
end
