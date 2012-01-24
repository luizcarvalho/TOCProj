class MainController < ApplicationController
  skip_before_filter :verifica_acesso
  def home
    @ads = Ad.all
    @news = Post.order("created_at desc").limit(6)
  end

  def player
    @configuration_stream = Configuration.find_by_tipo_and_label("radio","stream")
    render "player", :layout=>false
  end

  def login
      @msg = params[:msg]
  end


  def do_login
    respond_to do |format|
      if (@user = User.find_by_login(params[:user][:login])) && (@user.senha == params[:user][:senha])
        session[:user] = @user
        format.html { redirect_to("/bemvindo") }
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


def noticia
    @page = Post.find(params[:id])

    respond_to do |format|
      format.html {render "page"}
      format.xml  { render :xml => @post }
    end
end

def pagina
    @page = Page.find(params[:id])

    respond_to do |format|
      format.html {render "page"}
      format.xml  { render :xml => @post }
    end
end

end
