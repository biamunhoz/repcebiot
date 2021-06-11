class GenotiposController < ApplicationController
  before_action :set_genotipo, only: %i[ show edit update destroy ]
  before_action :autenticado?
  
  # GET /genotipos or /genotipos.json
  def index
    @genotipos = Genotipo.all
  end

  # GET /genotipos/1 or /genotipos/1.json
  def show
  end

  # GET /genotipos/new
  def new
    @genotipo = Genotipo.new
  end

  # GET /genotipos/1/edit
  def edit
  end

  # POST /genotipos or /genotipos.json
  def create
    @genotipo = Genotipo.new(genotipo_params)

    respond_to do |format|
      if @genotipo.save
        format.html { redirect_to @genotipo, notice: "Genótipo foi cadastrado com sucesso." }
        format.json { render :show, status: :created, location: @genotipo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @genotipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /genotipos/1 or /genotipos/1.json
  def update
    respond_to do |format|
      if @genotipo.update(genotipo_params)
        format.html { redirect_to @genotipo, notice: "Genótipo foi atualizado com sucesso." }
        format.json { render :show, status: :ok, location: @genotipo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @genotipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /genotipos/1 or /genotipos/1.json
  def destroy
    @genotipo.destroy
    respond_to do |format|
      format.html { redirect_to genotipos_url, notice: "Genótipo foi apagado com sucesso." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_genotipo
      @genotipo = Genotipo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def genotipo_params
      params.require(:genotipo).permit(:nome)
    end
end
