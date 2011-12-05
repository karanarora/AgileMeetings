class RubySyncUpsController < ApplicationController
  # GET /ruby_sync_ups
  # GET /ruby_sync_ups.json
  def index
    @ruby_sync_ups = RubySyncUp.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @ruby_sync_ups }
    end
  end

  # GET /ruby_sync_ups/1
  # GET /ruby_sync_ups/1.json
  def show
    @ruby_sync_up = RubySyncUp.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @ruby_sync_up }
    end
  end

  # GET /ruby_sync_ups/new
  # GET /ruby_sync_ups/new.json
  def new
    @ruby_sync_up = RubySyncUp.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @ruby_sync_up }
    end
  end

  # GET /ruby_sync_ups/1/edit
  def edit
    @ruby_sync_up = RubySyncUp.find(params[:id])
  end

  # POST /ruby_sync_ups
  # POST /ruby_sync_ups.json
  def create
    @ruby_sync_up = RubySyncUp.new(params[:ruby_sync_up])

    respond_to do |format|
      if @ruby_sync_up.save
        format.html { redirect_to @ruby_sync_up, :notice => 'Ruby sync up was successfully created.' }
        format.json { render :json => @ruby_sync_up, :status => :created, :location => @ruby_sync_up }
      else
        format.html { render :action => "new" }
        format.json { render :json => @ruby_sync_up.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /ruby_sync_ups/1
  # PUT /ruby_sync_ups/1.json
  def update
    @ruby_sync_up = RubySyncUp.find(params[:id])

    respond_to do |format|
      if @ruby_sync_up.update_attributes(params[:ruby_sync_up])
        format.html { redirect_to @ruby_sync_up, :notice => 'Ruby sync up was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @ruby_sync_up.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /ruby_sync_ups/1
  # DELETE /ruby_sync_ups/1.json
  def destroy
    @ruby_sync_up = RubySyncUp.find(params[:id])
    @ruby_sync_up.destroy

    respond_to do |format|
      format.html { redirect_to ruby_sync_ups_url }
      format.json { head :ok }
    end
  end
end
