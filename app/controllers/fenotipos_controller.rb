class FenotiposController < ApplicationController
  before_action :set_fenotipo, only: %i[ show edit update destroy ]
  before_action :autenticado?
  
  # GET /fenotipos or /fenotipos.json
  def index
    @fenotipos = Fenotipo.all
  end

  # GET /fenotipos/1 or /fenotipos/1.json
  def show
  end

  # GET /fenotipos/new
  def new
    @fenotipo = Fenotipo.new
  end

  # GET /fenotipos/1/edit
  def edit
  end

  # POST /fenotipos or /fenotipos.json
  def create
    @fenotipo = Fenotipo.new(fenotipo_params)

    respond_to do |format|
      if @fenotipo.save
        format.html { redirect_to @fenotipo, notice: "Fenótipo foi criado com sucesso." }
        format.json { render :show, status: :created, location: @fenotipo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @fenotipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fenotipos/1 or /fenotipos/1.json
  def update
    respond_to do |format|
      if @fenotipo.update(fenotipo_params)
        format.html { redirect_to @fenotipo, notice: "Fenótipo foi atualizado com sucesso." }
        format.json { render :show, status: :ok, location: @fenotipo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @fenotipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fenotipos/1 or /fenotipos/1.json
  def destroy
    @fenotipo.destroy
    respond_to do |format|
      format.html { redirect_to fenotipos_url, notice: "Fenótipo foi apagado com sucesso." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fenotipo
      @fenotipo = Fenotipo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fenotipo_params
      params.require(:fenotipo).permit(:nome)
    end
end
