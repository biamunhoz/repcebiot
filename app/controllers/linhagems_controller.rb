class LinhagemsController < ApplicationController
  before_action :set_linhagem, only: %i[ show edit update destroy ]
  before_action :autenticado?
  
  # GET /linhagems or /linhagems.json
  def index
    @linhagems = Linhagem.all
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

    respond_to do |format|
      if @linhagem.save
        format.html { redirect_to @linhagem, notice: "Linhagem foi criada com sucesso." }
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
        format.html { redirect_to @linhagem, notice: "Linhagem foi atualizada com sucesso." }
        format.json { render :show, status: :ok, location: @linhagem }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @linhagem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /linhagems/1 or /linhagems/1.json
  def destroy
    @linhagem.destroy
    respond_to do |format|
      format.html { redirect_to linhagems_url, notice: "Linhagem foi apagada com sucesso." }
      format.json { head :no_content }
    end
  end

  def classifica

    set_linhagem

    @linhagem.classificacao = params[:valor]

    @linhagem.save

    respond_to do |format|
      format.html { redirect_to linhagems_url, notice: "Classificação atualizada."}
    end

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_linhagem
      @linhagem = Linhagem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def linhagem_params
      params.require(:linhagem).permit(:nome, :anoiniciocolonia, :metodoacasalamento, :linkrefconstr, :nivelseguranca, :cqb, :genotipo_id, :bioterio_id, :origem_id, :fenotipo_id, :genealvo_id, :nivelsanitario, :mta, linfundos_attributes:[:id, :linhagem_id, :fundo_id, :_destroy], linprimers_attributes:[:id, :primer_id, :linhagem_id, :_destroy])
    end
end
