class GenealvosController < ApplicationController
  before_action :set_genealvo, only: %i[ show edit update destroy ]
  before_action :autenticado?
  
  # GET /genealvos or /genealvos.json
  def index
    @genealvos = Genealvo.all
  end

  # GET /genealvos/1 or /genealvos/1.json
  def show
  end

  # GET /genealvos/new
  def new
    @genealvo = Genealvo.new
  end

  # GET /genealvos/1/edit
  def edit
  end

  # POST /genealvos or /genealvos.json
  def create
    @genealvo = Genealvo.new(genealvo_params)
    @genealvo.usuario_id =  current_user.id

    respond_to do |format|
      if @genealvo.save
        addlog("Adicionar genealvo #{@genealvo.id}", "Gene Alvo")
        format.html { redirect_to @genealvo, notice: "Gene alvo foi criado com sucesso." }
        format.json { render :show, status: :created, location: @genealvo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @genealvo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /genealvos/1 or /genealvos/1.json
  def update
    respond_to do |format|
      if @genealvo.update(genealvo_params)
        addlog("Atualizar genealvo #{@genealvo.id}", "Gene Alvo")
        format.html { redirect_to @genealvo, notice: "Gene alvo foi atualizado com sucesso.." }
        format.json { render :show, status: :ok, location: @genealvo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @genealvo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /genealvos/1 or /genealvos/1.json
  def destroy
    addlog("Apagado genealvo #{@genealvo.id}", "Gene Alvo")
    @genealvo.destroy
    respond_to do |format|
      format.html { redirect_to genealvos_url, notice: "Gene alvo foi apagado com sucesso." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_genealvo
      @genealvo = Genealvo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def genealvo_params
      params.require(:genealvo).permit(:nomeoficial, :simbolo, :sitereferencia)
    end
end
