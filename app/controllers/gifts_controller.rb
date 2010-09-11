class GiftsController < ApplicationController
  # GET /gifts
  # GET /gifts.xml
  def index
    @our_gifts = Gift.our_gifts
    @other_gifts = Gift.other_gifts

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  # GET /gifts/new
  # GET /gifts/new.xml
  def new
    if params[:is_admin].present?
      @gift =  Gift.new(:is_admin => true)
    elsif params[:other_gift].present?
      @gift =  Gift.new(:purchased_on => Time.zone.now.to_date)
    end

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @gift }
    end
  end

  # GET /gifts/1/edit
  def edit
    @gift = Gift.find(params[:id])
  end

  # POST /gifts
  # POST /gifts.xml
  def create
    @gift = Gift.new(params[:gift])
    
    respond_to do |format|
      if @gift.save
        format.html { redirect_to(gifts_url, :notice => 'Gift was successfully created.') }
        format.xml  { render :xml => @gift, :status => :created, :location => @gift }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @gift.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /gifts/1
  # PUT /gifts/1.xml
  def update
    @gift = Gift.find(params[:id])

    respond_to do |format|
      if @gift.update_attributes(params[:gift])
        format.html { redirect_to(gifts_url, :notice => 'Gift was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @gift.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /gifts/1
  # DELETE /gifts/1.xml
  def destroy
    @gift = Gift.find(params[:id])
    @gift.destroy

    respond_to do |format|
      format.html { redirect_to(gifts_url) }
      format.xml  { head :ok }
    end
  end
  
  def purchase
    @gift = Gift.find(params[:id])
    @gift.purchase

    respond_to do |format|
      format.html { redirect_to(gifts_url) }
      format.xml  { head :ok }
    end
  end
  
  def unpurchase
    @gift = Gift.find(params[:id])
    @gift.unpurchase

    respond_to do |format|
      format.html { redirect_to(gifts_url) }
      format.xml  { head :ok }
    end
  end
end
