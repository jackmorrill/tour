class ApplicationController < ActionController::Base

  protect_from_forgery

  def force_ssl
    if Rails.env != ('development' || 'test')
      if !request.ssl?
        redirect_to :protocol => 'https'
      end
    end
  end

end
