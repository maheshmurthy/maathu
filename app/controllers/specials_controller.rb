class SpecialsController < ApplicationController
  before_filter :require_user

  # GET /specials/new
  # GET /specials/new.xml
  def new
    @special = Special.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @special }
    end
  end

  # GET /specials/1/edit
  def edit
    @special = Special.find(params[:id])
    if @special.userid != current_user.id
      redirect_to :root
    end
  end

  # POST /specials
  # POST /specials.xml
  def create
    @special = Special.new(params[:special])
    @special.userid = current_user.id

    respond_to do |format|
      if @special.save
        flash[:notice] = 'Special was successfully created.'
        format.html { redirect_to root_url }
        format.xml  { render :xml => @special, :status => :created, :location => @special }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @special.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /specials/1
  # PUT /specials/1.xml
  def update
    @special = Special.find(params[:id])
    if @special.userid != current_user.id
      redirect_to :root
      return
    end
    respond_to do |format|
      if @special.update_attributes(params[:special])
        flash[:notice] = 'Special was successfully updated.'
        format.html { redirect_to root_url }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @special.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /specials/1
  # DELETE /specials/1.xml
  def destroy
    @special = Special.find(params[:id])
    if @special.userid != current_user.id
      redirect_to :root
      return
    end
    @special.destroy

    respond_to do |format|
      format.html { redirect_to(root_url) }
      format.xml  { head :ok }
    end
  end
end
