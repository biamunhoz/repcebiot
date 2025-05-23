class LinhagemsController < ApplicationController

  before_action :set_linhagem, only: %i[ show edit update destroy ]
  before_action :autenticado?
  
  # GET /linhagems or /linhagems.json
  def index
    at = params[:atual]

    if at == "ativo"
      @linhagems = Linhagem.where(habilitado: true)
    else
      @linhagems = Linhagem.where(habilitado: false) 
    end 
  end

  # GET /linhagems/1 or /linhagems/1.json
  def show
  end

  # GET /linhagems/new
  def new
    @linhagem = Linhagem.new
    @linhagem.linfundos.build if @linhagem.linfundos.empty?
    @linhagem.linprimers.build if @linhagem.linprimers.empty?
  end

  # GET /linhagems/1/edit
  def edit
    @linhagem.linfundos.build if @linhagem.linfundos.empty?
    @linhagem.linprimers.build if @linhagem.linprimers.empty?    
  end

  # POST /linhagems or /linhagems.json
  def create
    @linhagem = Linhagem.new(linhagem_params)
    @linhagem.usuario_id =  current_user.id
    @linhagem.status = "Novo"

    respond_to do |format|
      if @linhagem.save
        addlog("Adicionar linhagem #{@linhagem.id}", "Linhagem")
        format.html { redirect_to linhagems_url(atual: "ativo"), notice: "Linhagem foi criada com sucesso." }
        format.json { render :show, status: :created, location: @linhagem }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @linhagem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /linhagems/1 or /linhagems/1.json
  def update

    respond_to do |format|
      if @linhagem.update(linhagem_params)
        
        if @linhagem.status == "Recusado"
          @linhagem.habilitado = false
        end 
        @linhagem.save

        addlog("Editar linhagem #{@linhagem.id}", "Linhagem")
        #format.html { redirect_to @linhagem, notice: "Linhagem foi atualizada com sucesso." }
        format.html { redirect_to linhagems_url(atual: "ativo"), notice: "Linhagem foi atualizada com sucesso." }
        format.json { render :show, status: :ok, location: @linhagem }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @linhagem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /linhagems/1 or /linhagems/1.json
  def destroy
    #@linhagem.destroy

    @linhagem.update(habilitado: false)

    if @linhagem.save
      addlog("Desabilitada linhagem #{@linhagem.id}", "Linhagem")
      respond_to do |format|
        format.html { redirect_to linhagems_url(atual: "inativo"), notice: "Linhagem foi desabilitada para acesso dos usuários com sucesso." }
        format.json { head :no_content }    
      end
    else
      format.html { render :new, status: :unprocessable_entity }
      format.json { render json: @linhagem.errors, status: :unprocessable_entity }
    end 

  end

  def ativalin

    set_linhagem

    @linhagem.update(habilitado: true)

    addlog("Ativar linhagem #{@linhagem.id}", "Linhagem")

    if @linhagem.save
      respond_to do |format|
        format.html { redirect_to linhagems_url(atual: "ativo"), notice: "Linhagem foi habilita para acesso dos usuários com sucesso." }
        format.json { head :no_content }    
      end
    else
      format.html { render :new, status: :unprocessable_entity }
      format.json { render json: @linhagem.errors, status: :unprocessable_entity }
    end 

  end


  def classifica

    set_linhagem

    @linhagem.classificacao = params[:valor]

    @linhagem.save

    addlog("Classificar linhagem #{@linhagem.id}", "Linhagem")

    if @linhagem.save
      respond_to do |format|
        format.html { redirect_to linhagems_url(:atual => "ativo") , notice: "Classificação atualizada." }
        format.json { head :no_content }    
      end
    else
      format.html { render :new, status: :unprocessable_entity }
      format.json { render json: @linhagem.errors, status: :unprocessable_entity }
    end

  end
  
  def resultindex

    sbusca = ""

    if params[:bioterio] == nil

    elsif params[:bioterio] != ""
      sbusca = " bioterio_id = " + params[:bioterio].to_s
    end

    @result = Linhagem.where(sbusca).order("id asc")

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_linhagem
      @linhagem = Linhagem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def linhagem_params
      params.require(:linhagem).permit(:nome, :anoiniciocolonia, :metodoacasalamento, :linkrefconstr, :nivelseguranca, :cqb, :genotipo_id, :bioterio_id, :origem_id, :genealvo_id, :nivelsanitario, :mta, :fenotipo, :especie, :usuario_id, :status, linfundos_attributes:[:id, :linhagem_id, :fundo_id, :_destroy], linprimers_attributes:[:id, :primer_id, :linhagem_id, :_destroy])
    end
end
