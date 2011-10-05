class MacropostsController < ApplicationController
  # GET /macroposts
  # GET /macroposts.json
  def index
    @macroposts = Macropost.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @macroposts }
    end
  end

  # GET /macroposts/1
  # GET /macroposts/1.json
  def show
    @macropost = Macropost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @macropost }
    end
  end

  # GET /macroposts/new
  # GET /macroposts/new.json
  def new
    @macropost = Macropost.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @macropost }
    end
  end

  # GET /macroposts/1/edit
  def edit
    @macropost = Macropost.find(params[:id])
  end

  # POST /macroposts
  # POST /macroposts.json
  def create
    @macropost = Macropost.new(params[:macropost])

    respond_to do |format|
      if @macropost.save
        format.html { redirect_to @macropost, :notice => 'Macropost was successfully created.' }
        format.json { render :json => @macropost, :status => :created, :location => @macropost }
      else
        format.html { render :action => "new" }
        format.json { render :json => @macropost.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /macroposts/1
  # PUT /macroposts/1.json
  def update
    @macropost = Macropost.find(params[:id])

    respond_to do |format|
      if @macropost.update_attributes(params[:macropost])
        format.html { redirect_to @macropost, :notice => 'Macropost was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @macropost.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /macroposts/1
  # DELETE /macroposts/1.json
  def destroy
    @macropost = Macropost.find(params[:id])
    @macropost.destroy

    respond_to do |format|
      format.html { redirect_to macroposts_url }
      format.json { head :ok }
    end
  end
end
