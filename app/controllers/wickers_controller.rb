class WickersController < ApplicationController
  # GET /wickers
  # GET /wickers.json
  def index
    @wickers = Wicker.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @wickers }
    end
  end

  # GET /wickers/1
  # GET /wickers/1.json
  def show
    @wicker = Wicker.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @wicker }
    end
  end

  # GET /wickers/new
  # GET /wickers/new.json
  def new
    @wicker = Wicker.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @wicker }
    end
  end

  # GET /wickers/1/edit
  def edit
    @wicker = Wicker.find(params[:id])
  end

  # POST /wickers
  # POST /wickers.json
  def create
    @wicker = Wicker.new(params[:wicker])

    respond_to do |format|
      if @wicker.save
        format.html { redirect_to @wicker, notice: 'Wicker was successfully created.' }
        format.json { render json: @wicker, status: :created, location: @wicker }
      else
        format.html { render action: "new" }
        format.json { render json: @wicker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /wickers/1
  # PUT /wickers/1.json
  def update
    @wicker = Wicker.find(params[:id])

    respond_to do |format|
      if @wicker.update_attributes(params[:wicker])
        format.html { redirect_to @wicker, notice: 'Wicker was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @wicker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wickers/1
  # DELETE /wickers/1.json
  def destroy
    @wicker = Wicker.find(params[:id])
    @wicker.destroy

    respond_to do |format|
      format.html { redirect_to wickers_url }
      format.json { head :no_content }
    end
  end
end
