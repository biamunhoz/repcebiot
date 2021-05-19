class FundosController < ApplicationController
  before_action :set_fundo, only: %i[ show edit update destroy ]

  # GET /fundos or /fundos.json
  def index
    @fundos = Fundo.all
  end

  # GET /fundos/1 or /fundos/1.json
  def show
  end

  # GET /fundos/new
  def new
    @fundo = Fundo.new
  end

  # GET /fundos/1/edit
  def edit
  end

  # POST /fundos or /fundos.json
  def create
    @fundo = Fundo.new(fundo_params)

    respond_to do |format|
      if @fundo.save
        format.html { redirect_to @fundo, notice: "Fundo foi criado com sucesso." }
        format.json { render :show, status: :created, location: @fundo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @fundo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fundos/1 or /fundos/1.json
  def update
    respond_to do |format|
      if @fundo.update(fundo_params)
        format.html { redirect_to @fundo, notice: "Fundo foi atualizado com sucesso." }
        format.json { render :show, status: :ok, location: @fundo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @fundo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fundos/1 or /fundos/1.json
  def destroy
    @fundo.destroy
    respond_to do |format|
      format.html { redirect_to fundos_url, notice: "Fundo foi apagado com sucesso." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fundo
      @fundo = Fundo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fundo_params
      params.require(:fundo).permit(:nome)
    end
end
