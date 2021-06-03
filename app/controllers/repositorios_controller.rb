class RepositoriosController < ApplicationController
  before_action :set_repositorio, only: %i[ show edit update destroy ]

  # GET /repositorios or /repositorios.json
  def index
    @repositorios = Repositorio.all
  end

  # GET /repositorios/1 or /repositorios/1.json
  def show
  end

  # GET /repositorios/new
  def new
    @repositorio = Repositorio.new
  end

  # GET /repositorios/1/edit
  def edit
  end

  # POST /repositorios or /repositorios.json
  def create
    @repositorio = Repositorio.new(repositorio_params)

    respond_to do |format|
      if @repositorio.save
        format.html { redirect_to @repositorio, notice: "Repositório foi criado com sucesso. " }
        format.json { render :show, status: :created, location: @repositorio }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @repositorio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /repositorios/1 or /repositorios/1.json
  def update
    respond_to do |format|
      if @repositorio.update(repositorio_params)
        format.html { redirect_to @repositorio, notice: "Repositório foi atualizado com sucesso. " }
        format.json { render :show, status: :ok, location: @repositorio }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @repositorio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /repositorios/1 or /repositorios/1.json
  def destroy
    @repositorio.destroy
    respond_to do |format|
      format.html { redirect_to repositorios_url, notice: "Repositório foi apagado com sucesso." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_repositorio
      @repositorio = Repositorio.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def repositorio_params
      params.require(:repositorio).permit(:anoiniciocolonia, :metodoacasalamento, :linkrefconstr, :nivelseguranca, :cqb, :genotipo_id, :bioterio_id, :origem_id, :fenotipo_id, :genealvo_id)
    end
end
