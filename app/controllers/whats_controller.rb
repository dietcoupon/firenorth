class WhatsController < ApplicationController
  # GET /whats
  # GET /whats.xml
  def index
    @whats = What.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @whats }
    end
  end

  # GET /whats/1
  # GET /whats/1.xml
  def show
    @what = What.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @what }
    end
  end

  # GET /whats/new
  # GET /whats/new.xml
  def new
    @what = What.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @what }
    end
  end

  # GET /whats/1/edit
  def edit
    @what = What.find(params[:id])
  end

  # POST /whats
  # POST /whats.xml
  def create
    @what = What.new(params[:what])

    respond_to do |format|
      if @what.save
        format.html { redirect_to(@what, :notice => 'What was successfully created.') }
        format.xml  { render :xml => @what, :status => :created, :location => @what }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @what.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /whats/1
  # PUT /whats/1.xml
  def update
    @what = What.find(params[:id])

    respond_to do |format|
      if @what.update_attributes(params[:what])
        format.html { redirect_to(@what, :notice => 'What was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @what.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /whats/1
  # DELETE /whats/1.xml
  def destroy
    @what = What.find(params[:id])
    @what.destroy

    respond_to do |format|
      format.html { redirect_to(whats_url) }
      format.xml  { head :ok }
    end
  end
end
