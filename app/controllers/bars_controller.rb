class BarsController < ApplicationController

  before_filter :require_user, :only => [:edit]
  before_filter :require_admin_credentials, :only => [:new]

  # GET /bars
  # GET /bars.xml
  def index
    @bars = Bar.all
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @bars }
    end
  end

  # GET /bars/1
  # GET /bars/1.xml
  def show
    @bar = Bar.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @bar }
    end
  end

  # GET /bars/new
  # GET /bars/new.xml
  def new
    @bar = Bar.new
    @special = Special.new
    Date::DAYNAMES.each do |day|
      daily_special = @bar.daily_specials.build
      daily_special.day = day
    end

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @bar }
    end
  end

  # GET /bars/1/edit
  def edit
    @bar = Bar.find(params[:id])
    # Make sure the bar belongs to the signed in user
    if(@bar.user_id != current_user_session.user.id && !is_admin)
      flash[:notice] = "You don't have the credentials to view this page"
      redirect_to root_url
      return
    end
  end

  # POST /bars
  # POST /bars.xml
  def create
    @bar = Bar.new(params[:bar])
    @bar.save

    respond_to do |format|
      if @bar.save
        flash[:notice] = 'Bar was successfully created.'
        format.html { redirect_to(@bar) }
        format.xml  { render :xml => @bar, :status => :created, :location => @bar }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @bar.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /bars/1
  # PUT /bars/1.xml
  def update
    @bar = Bar.find(params[:id])
    respond_to do |format|
      if @bar.update_attributes(params[:bar])
        flash[:notice] = 'Bar was successfully updated.'
        format.html { redirect_to(@bar) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @bar.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /bars/1
  # DELETE /bars/1.xml
  def destroy
    @bar = Bar.find(params[:id])
    @bar.destroy

    respond_to do |format|
      format.html { redirect_to(bars_url) }
      format.xml  { head :ok }
    end
  end
end
