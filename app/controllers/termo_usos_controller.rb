class TermoUsosController < ApplicationController
  # GET /termo_usos
  # GET /termo_usos.json
  def index
    @termo_usos = TermoUso.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @termo_usos }
    end
  end

  # GET /termo_usos/1
  # GET /termo_usos/1.json
  def show
    @termo_uso = TermoUso.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @termo_uso }
    end
  end

  # GET /termo_usos/new
  # GET /termo_usos/new.json
  def new
    @termo_uso = TermoUso.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @termo_uso }
    end
  end

  # GET /termo_usos/1/edit
  def edit
    @termo_uso = TermoUso.find(params[:id])
  end

  # POST /termo_usos
  # POST /termo_usos.json
  def create
    @termo_uso = TermoUso.new(params[:termo_uso])

    respond_to do |format|
      if @termo_uso.save
        format.html { redirect_to @termo_uso, notice: 'Termo uso was successfully created.' }
        format.json { render json: @termo_uso, status: :created, location: @termo_uso }
      else
        format.html { render action: "new" }
        format.json { render json: @termo_uso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /termo_usos/1
  # PUT /termo_usos/1.json
  def update
    @termo_uso = TermoUso.find(params[:id])

    respond_to do |format|
      if @termo_uso.update_attributes(params[:termo_uso])
        format.html { redirect_to @termo_uso, notice: 'Termo uso was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @termo_uso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /termo_usos/1
  # DELETE /termo_usos/1.json
  def destroy
    @termo_uso = TermoUso.find(params[:id])
    @termo_uso.destroy

    respond_to do |format|
      format.html { redirect_to termo_usos_url }
      format.json { head :no_content }
    end
  end
end
