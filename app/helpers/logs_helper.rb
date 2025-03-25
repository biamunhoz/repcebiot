module LogsHelper
    
    def addlog(acao, tela)

        @log  = Log.new
    
        @log.acao = acao
        @log.usuario_id = session[:usuario_id]
        @log.tela = tela
    
        @log.save!
    
    end

end
