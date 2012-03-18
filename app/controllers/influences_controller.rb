class InfluencesController < ApplicationController
  # GET /influences
  # GET /influences.json
  def index
    @influences = Influence.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @influences }
    end
  end

  # GET /influences/1
  # GET /influences/1.json
  def show
    @influence = Influence.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @influence }
    end
  end

  # GET /influences/new
  # GET /influences/new.json
  def new
    @consumer = Consumer.find(params[:consumer_id])
    @influence = Influence.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @influence }
    end
  end

  # GET /influences/1/edit
  def edit
    @influence = Influence.find(params[:id])
  end

  # POST /influences
  # POST /influences.json
  def create
    @consumer = Consumer.find(params[:consumer_id])
    @influence = @consumer.influences.build(params[:influence])

    respond_to do |format|
      if @influence.save
        format.html { redirect_to @influence, notice: 'Influence was successfully created.' }
        format.json { render json: @influence, status: :created, location: @influence }
      else
        format.html { render action: "new" }
        format.json { render json: @influence.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /influences/1
  # PUT /influences/1.json
  def update
    @influence = Influence.find(params[:id])

    respond_to do |format|
      if @influence.update_attributes(params[:influence])
        format.html { redirect_to @influence, notice: 'Influence was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @influence.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /influences/1
  # DELETE /influences/1.json
  def destroy
    @influence = Influence.find(params[:id])
    @influence.destroy

    respond_to do |format|
      format.html { redirect_to influences_url }
      format.json { head :ok }
    end
  end
end
