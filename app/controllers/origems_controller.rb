class OrigemsController < ApplicationController
  before_action :set_origem, only: %i[ show edit update destroy ]
  before_action :autenticado?
  
  # GET /origems or /origems.json
  def index
    @origems = Origem.all
  end

  # GET /origems/1 or /origems/1.json
  def show
  end

  # GET /origems/new
  def new
    @origem = Origem.new
  end

  # GET /origems/1/edit
  def edit
  end

  # POST /origems or /origems.json
  def create
    @origem = Origem.new(origem_params)
    @origem.usuario_id =  current_user.id

    respond_to do |format|
      if @origem.save
        addlog("Adicionar origem #{@origem.id}", "Origem")
        format.html { redirect_to @origem, notice: "Origem foi cadastrado com sucesso." }
        format.json { render :show, status: :created, location: @origem }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @origem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /origems/1 or /origems/1.json
  def update
    respond_to do |format|
      if @origem.update(origem_params)
        addlog("Atualizar origem #{@origem.id}", "Origem")
        format.html { redirect_to @origem, notice: "Origem foi atualizado com sucesso." }
        format.json { render :show, status: :ok, location: @origem }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @origem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /origems/1 or /origems/1.json
  def destroy
    addlog("Apagado origem #{@origem.id}", "Origem")
    @origem.destroy
    respond_to do |format|
      format.html { redirect_to origems_url, notice: "Origem foi apagado com sucesso." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_origem
      @origem = Origem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def origem_params
      params.require(:origem).permit(:instituicao, :sigla, :endereco, :observacao, :usuario_id)
    end
end
