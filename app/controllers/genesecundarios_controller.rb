class GenesecundariosController < ApplicationController
  before_action :set_genesecundario, only: %i[ show edit update destroy ]
  before_action :autenticado?
  
  # GET /genesecundarios or /genesecundarios.json
  def index
    @genesecundarios = Genesecundario.where(genealvo_id:params[:idalvo])
  end

  # GET /genesecundarios/1 or /genesecundarios/1.json
  def show
  end

  # GET /genesecundarios/new
  def new
    @genesecundario = Genesecundario.new
  end

  # GET /genesecundarios/1/edit
  def edit
  end

  # POST /genesecundarios or /genesecundarios.json
  def create
    @genesecundario = Genesecundario.new(genesecundario_params)

    respond_to do |format|
      if @genesecundario.save
        addlog("Adicionado genesecundario #{@genesecundario.id}", "Gene secundario")
        format.html { redirect_to @genesecundario, notice: "Gene secundário foi criado com sucesso." }
        format.json { render :show, status: :created, location: @genesecundario }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @genesecundario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /genesecundarios/1 or /genesecundarios/1.json
  def update
    respond_to do |format|
      if @genesecundario.update(genesecundario_params)
        addlog("Atualizado genesecundario #{@genesecundario.id}", "Gene secundario")
        format.html { redirect_to @genesecundario, notice: "Gene secundário foi atualizado com sucesso." }
        format.json { render :show, status: :ok, location: @genesecundario }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @genesecundario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /genesecundarios/1 or /genesecundarios/1.json
  def destroy
    addlog("Apagado genesecundario #{@genesecundario.id}", "Gene secundario")
    @genesecundario.destroy
    respond_to do |format|
      format.html { redirect_to genealvos_path, notice: "Gene secundário foi apagado com sucesso." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_genesecundario
      @genesecundario = Genesecundario.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def genesecundario_params
      params.require(:genesecundario).permit(:genealvo_id, :geneassociado_id)
    end
end
