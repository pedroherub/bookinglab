class TimeunitsController < ApplicationController
  # GET /timeunits
  # GET /timeunits.xml
  def index
    @timeunits = Timeunit.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @timeunits }
    end
  end

  # GET /timeunits/1
  # GET /timeunits/1.xml
  def show
    @timeunit = Timeunit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @timeunit }
    end
  end

  # GET /timeunits/new
  # GET /timeunits/new.xml
  def new
    @timeunit = Timeunit.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @timeunit }
    end
  end

  # GET /timeunits/1/edit
  def edit
    @timeunit = Timeunit.find(params[:id])
  end

  # POST /timeunits
  # POST /timeunits.xml
  def create
    @timeunit = Timeunit.new(params[:timeunit])

    respond_to do |format|
      if @timeunit.save
        format.html { redirect_to(@timeunit, :notice => 'Timeunit was successfully created.') }
        format.xml  { render :xml => @timeunit, :status => :created, :location => @timeunit }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @timeunit.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /timeunits/1
  # PUT /timeunits/1.xml
  def update
    @timeunit = Timeunit.find(params[:id])

    respond_to do |format|
      if @timeunit.update_attributes(params[:timeunit])
        format.html { redirect_to(@timeunit, :notice => 'Timeunit was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @timeunit.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /timeunits/1
  # DELETE /timeunits/1.xml
  def destroy
    @timeunit = Timeunit.find(params[:id])
    @timeunit.destroy

    respond_to do |format|
      format.html { redirect_to(timeunits_url) }
      format.xml  { head :ok }
    end
  end
end
