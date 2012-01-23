class MainController < ApplicationController
  skip_before_filter :verifica_acesso
  def home
  end

  def login
      @msg = params[:msg]
  end


  def do_login
    respond_to do |format|
      if (@user = User.find_by_login(params[:user][:login])) && (@user.senha == params[:user][:senha])
        session[:user] = @user
        format.html { redirect_to(configurations_path) }
        format.xml  { render :xml => @user, :status => :created, :location => @user }
      else
        params[:user]=nil
        @msg= "Usuário ou senha incorreto"
        format.html { render :action => "login" }
      end
    end
  end

def logout
  session[:user]=nil
  redirect_to root_path
end


  def configuration
  end

end
