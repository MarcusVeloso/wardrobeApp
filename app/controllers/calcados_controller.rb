class CalcadosController < ApplicationController
  before_action :set_calcado, only: %i[ show edit update destroy ]

  # GET /calcados or /calcados.json
  def index
    @calcados = Calcado.all
  end

  # GET /calcados/1 or /calcados/1.json
  def show
  end

  # GET /calcados/new
  def new
    @calcado = Calcado.new
  end

  # GET /calcados/1/edit
  def edit
  end

  # POST /calcados or /calcados.json
  def create
    @calcado = Calcado.new(calcado_params)

    respond_to do |format|
      if @calcado.save
        format.html { redirect_to @calcado, notice: "Calcado was successfully created." }
        format.json { render :show, status: :created, location: @calcado }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @calcado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /calcados/1 or /calcados/1.json
  def update
    respond_to do |format|
      if @calcado.update(calcado_params)
        format.html { redirect_to @calcado, notice: "Calcado was successfully updated." }
        format.json { render :show, status: :ok, location: @calcado }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @calcado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /calcados/1 or /calcados/1.json
  def destroy
    @calcado.destroy
    respond_to do |format|
      format.html { redirect_to calcados_url, notice: "Calcado was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_calcado
      @calcado = Calcado.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def calcado_params
      params.require(:calcado).permit(:descricao, :tipo_calcado, :tamanho, :marca, :ativo)
    end
end
