class PrimersController < ApplicationController
  before_action :set_primer, only: %i[ show edit update destroy ]
  before_action :autenticado?
  
  # GET /primers or /primers.json
  def index
    @primers = Primer.all
  end

  # GET /primers/1 or /primers/1.json
  def show
  end

  # GET /primers/new
  def new
    @primer = Primer.new
  end

  # GET /primers/1/edit
  def edit
  end

  # POST /primers or /primers.json
  def create
    @primer = Primer.new(primer_params)
    @primer.usuario_id =  current_user.id

    respond_to do |format|
      if @primer.save
        addlog("Adicionado primer #{@primer.id}", "Primer")
        format.html { redirect_to @primer, notice: "Primer foi criado com sucesso." }
        format.json { render :show, status: :created, location: @primer }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @primer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /primers/1 or /primers/1.json
  def update
    respond_to do |format|
      if @primer.update(primer_params)
        addlog("Atualizado primer #{@primer.id}", "Primer")
        format.html { redirect_to @primer, notice: "Primer foi atualizado com sucesso." }
        format.json { render :show, status: :ok, location: @primer }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @primer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /primers/1 or /primers/1.json
  def destroy
    addlog("Apagado primer #{@primer.id}", "Primer")
    @primer.destroy
    respond_to do |format|
      format.html { redirect_to primers_url, notice: "Primer foi apagado com sucesso." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_primer
      @primer = Primer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def primer_params
      params.require(:primer).permit(:descricao, :protocolopcr, :geldeacarose, :usuario_id)
    end
end
