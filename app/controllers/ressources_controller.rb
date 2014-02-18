class RessourcesController < ApplicationController
  # GET /ressources
  # GET /ressources.json
  def index
    @ressources = Ressource.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ressources }
    end
  end

  # GET /ressources/1
  # GET /ressources/1.json
  def show
    @ressource = Ressource.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ressource }
    end
  end

  # GET /ressources/new
  # GET /ressources/new.json
  def new
    @ressource = Ressource.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ressource }
    end
  end

  # GET /ressources/1/edit
  def edit
    @ressource = Ressource.find(params[:id])
  end

  # POST /ressources
  # POST /ressources.json
  def create
    @ressource = Ressource.new(params[:ressource])

    respond_to do |format|
      if @ressource.save
        format.html { redirect_to @ressource, notice: 'Ressource was successfully created.' }
        format.json { render json: @ressource, status: :created, location: @ressource }
      else
        format.html { render action: "new" }
        format.json { render json: @ressource.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ressources/1
  # PUT /ressources/1.json
  def update
    @ressource = Ressource.find(params[:id])

    respond_to do |format|
      if @ressource.update_attributes(params[:ressource])
        format.html { redirect_to @ressource, notice: 'Ressource was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ressource.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ressources/1
  # DELETE /ressources/1.json
  def destroy
    @ressource = Ressource.find(params[:id])
    @ressource.destroy

    respond_to do |format|
      format.html { redirect_to ressources_url }
      format.json { head :no_content }
    end
  end
end
