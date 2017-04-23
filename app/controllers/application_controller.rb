class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include Pundit

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  private

  def user_not_authorized
    puts '#####OLAR#####'
    puts request.request_method # DELETE
    action = request.fullpath.partition(/\/{1}([a-z]+)\//)[2]
    action = action.partition(/\//)[0]
    action.chomp!('s')
    flash[:notice] = "You are not authorized to #{request.request_method.downcase} this #{action}"

    redirect_to(request.referrer || root_path)
  end
end
