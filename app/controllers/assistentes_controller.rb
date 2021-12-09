class AssistentesController < ApplicationController
  before_action :set_assistente, only: %i[ show edit update destroy ]

  # GET /assistentes or /assistentes.json
  def index
    @assistentes = Assistente.all
  end

  # GET /assistentes/1 or /assistentes/1.json
  def show
  end

  # GET /assistentes/new
  def new
    @assistente = Assistente.new
  end

  # GET /assistentes/1/edit
  def edit
  end

  # POST /assistentes or /assistentes.json
  def create
    @assistente = Assistente.new(assistente_params)

    respond_to do |format|
      if @assistente.save
        format.html { redirect_to @assistente, notice: "Nova secretária criada com sucesso." }
        format.json { render :show, status: :created, location: @assistente }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @assistente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /assistentes/1 or /assistentes/1.json
  def update
    respond_to do |format|
      if @assistente.update(assistente_params)
        format.html { redirect_to @assistente, notice: "Secretária editada com sucesso." }
        format.json { render :show, status: :ok, location: @assistente }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @assistente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assistentes/1 or /assistentes/1.json
  def destroy
    @assistente.destroy
    respond_to do |format|
      format.html { redirect_to assistentes_url, notice: "Secretária deletada com sucesso." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assistente
      @assistente = Assistente.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def assistente_params
      params.require(:assistente).permit(:chefe, :secretaria)
    end
end
