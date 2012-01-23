class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :verifica_acesso





protected
def verifica_acesso
 unless session[:user]
    redirect_to :controller => :main, :action => :login, :msg => "Login requerido"
 end
end

end
