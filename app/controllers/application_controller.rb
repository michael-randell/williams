class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def root
    @contact = Contact.new
  end

  def services
  end
end
