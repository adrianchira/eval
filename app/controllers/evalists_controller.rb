class EvalistsController < ApplicationController
  # GET /evalists
  # GET /evalists.json
  def index
    @evalists = Evalist.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @evalists }
    end
  end

  # GET /evalists/1
  # GET /evalists/1.json
  def show
    @evalist = Evalist.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @evalist }
    end
  end

  # GET /evalists/new
  # GET /evalists/new.json
  def new
    @evalist = Evalist.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @evalist }
    end
  end

  # GET /evalists/1/edit
  def edit
    @evalist = Evalist.find(params[:id])
  end

  # POST /evalists
  # POST /evalists.json
  def create
    @evalist = Evalist.new(params[:evalist])

    respond_to do |format|
      if @evalist.save
        format.html { redirect_to @evalist, notice: 'Evalist was successfully created.' }
        format.json { render json: @evalist, status: :created, location: @evalist }
      else
        format.html { render action: "new" }
        format.json { render json: @evalist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /evalists/1
  # PUT /evalists/1.json
  def update
    @evalist = Evalist.find(params[:id])

    respond_to do |format|
      if @evalist.update_attributes(params[:evalist])
        format.html { redirect_to @evalist, notice: 'Evalist was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @evalist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /evalists/1
  # DELETE /evalists/1.json
  def destroy
    @evalist = Evalist.find(params[:id])
    @evalist.destroy

    respond_to do |format|
      format.html { redirect_to evalists_url }
      format.json { head :no_content }
    end
  end
end
