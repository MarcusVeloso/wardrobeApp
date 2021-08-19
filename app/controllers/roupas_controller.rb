class RoupasController < ApplicationController
  before_action :set_roupa, only: %i[ show edit update destroy ]

  # GET /roupas or /roupas.json
  def index
    @roupas = Roupa.all
  end

  # GET /roupas/1 or /roupas/1.json
  def show
  end

  # GET /roupas/new
  def new
    @roupa = Roupa.new
  end

  # GET /roupas/1/edit
  def edit
  end

  # POST /roupas or /roupas.json
  def create
    @roupa = Roupa.new(roupa_params)

    respond_to do |format|
      if @roupa.save
        format.html { redirect_to @roupa, notice: "Roupa was successfully created." }
        format.json { render :show, status: :created, location: @roupa }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @roupa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /roupas/1 or /roupas/1.json
  def update
    respond_to do |format|
      if @roupa.update(roupa_params)
        format.html { redirect_to @roupa, notice: "Roupa was successfully updated." }
        format.json { render :show, status: :ok, location: @roupa }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @roupa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /roupas/1 or /roupas/1.json
  def destroy
    @roupa.destroy
    respond_to do |format|
      format.html { redirect_to roupas_url, notice: "Roupa was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_roupa
      @roupa = Roupa.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def roupa_params
      params.require(:roupa).permit(:descricao, :tipo_roupa, :tamanho, :marca, :ativo)
    end
end
