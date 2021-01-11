# frozen_string_literal: true

# language and session
class ApplicationController < ActionController::Base
  include SessionHelper

  before_action :require_login, :set_locale

  private

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def default_url_options(options = {})
    { locale: I18n.locale }.merge options
  end

  def require_login
    return if signed_in?
    flash[:danger] = 'Требуется логин'
    redirect_to session_login_url
  end
end
