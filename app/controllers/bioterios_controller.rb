class BioteriosController < ApplicationController
  before_action :set_bioterio, only: %i[ show edit update destroy ]

  # GET /bioterios or /bioterios.json
  def index
    @bioterios = Bioterio.all
  end

  # GET /bioterios/1 or /bioterios/1.json
  def show
  end

  # GET /bioterios/new
  def new
    @bioterio = Bioterio.new
  end

  # GET /bioterios/1/edit
  def edit
  end

  # POST /bioterios or /bioterios.json
  def create
    @bioterio = Bioterio.new(bioterio_params)

    respond_to do |format|
      if @bioterio.save
        format.html { redirect_to @bioterio, notice: "Biotério foi criado com sucesso." }
        format.json { render :show, status: :created, location: @bioterio }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bioterio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bioterios/1 or /bioterios/1.json
  def update
    respond_to do |format|
      if @bioterio.update(bioterio_params)
        format.html { redirect_to @bioterio, notice: "Biotério foi atualizado com sucesso." }
        format.json { render :show, status: :ok, location: @bioterio }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bioterio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bioterios/1 or /bioterios/1.json
  def destroy
    @bioterio.destroy
    respond_to do |format|
      format.html { redirect_to bioterios_url, notice: "Biotério foi apagado com sucesso." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bioterio
      @bioterio = Bioterio.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bioterio_params
      params.require(:bioterio).permit(:local, :unidade, :idcuica, :origem_id)
    end
end
