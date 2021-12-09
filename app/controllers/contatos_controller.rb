class ContatosController < ApplicationController
  before_action :set_contato, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :correct_user, only: [:edit, :update, :destroy]

  # GET /contatos or /contatos.json
  def index
    @contatos = Contato.all
  end

  # GET /contatos/1 or /contatos/1.json
  def show
  end

  # GET /contatos/new
  def new
    # @contato = Contato.new
    @contato = current_user.contatos.build
  end

  # GET /contatos/1/edit
  def edit
  end

  # POST /contatos or /contatos.json
  def create
   # @contato = Contato.new(contato_params)
   @contato = current_user.contatos.build(contato_params)

    respond_to do |format|
      if @contato.save
        format.html { redirect_to @contato, notice: "Contato foi criado com sucesso." }
        format.json { render :show, status: :created, location: @contato }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @contato.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contatos/1 or /contatos/1.json
  def update
    respond_to do |format|
      if @contato.update(contato_params)
        format.html { redirect_to @contato, notice: "Contato foi editado com sucesso." }
        format.json { render :show, status: :ok, location: @contato }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @contato.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contatos/1 or /contatos/1.json
  def destroy
    @contato.destroy
    respond_to do |format|
      format.html { redirect_to contatos_url, notice: "Contato foi deletado com sucesso." }
      format.json { head :no_content }
    end
  end

  def correct_user
    @contato = current_user.contatos.find_by(id: params[:id])
    redirect_to contatos_path, notice: "Você não tem permissão para editar esse contato." if @contato.nil?
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contato
      @contato = Contato.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def contato_params
      params.require(:contato).permit(:nome, :telefone, :email, :departamento, :cargo, :locacao, :chefe, :secretaria, :user_id)
    end
end
