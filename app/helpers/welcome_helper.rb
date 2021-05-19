module WelcomeHelper

  #cria uma sessão
  def log_in(loginUsuario)
    session[:login] = loginUsuario
    session[:admingeral] = false

    @user = Usuario.find_by(:loginUsuario => loginUsuario)

    @vinculo = TipoVinculo.where(:usuario_id => @user.id)

    @vinculo.each do |v|
      print v.codigoSetor
      if v.codigoSetor.to_s() == '3610'
        session[:admingeral] = true
      end 
    end
    
  end

  #destroi a sessão criada na def anterior
  def log_out
    session.destroy
    @current_user = nil
  end

  def current_user
    @current_user ||= Usuario.find_by(loginUsuario: session[:login])
  end

end
