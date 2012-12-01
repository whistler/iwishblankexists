class WishnamesController < ApplicationController
  # GET /wishnames
  # GET /wishnames.json
  def index
    @wishnames = Wishname.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @wishnames }
    end
  end

  # GET /wishnames/1
  # GET /wishnames/1.json
  def show
    @wishname = Wishname.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @wishname }
    end
  end

  # GET /wishnames/new
  # GET /wishnames/new.json
  def new
    @wishname = Wishname.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @wishname }
    end
  end

  # GET /wishnames/1/edit
  def edit
    @wishname = Wishname.find(params[:id])
  end

  # POST /wishnames
  # POST /wishnames.json
  def create
    @wishname = Wishname.new(params[:wishname])

    respond_to do |format|
      if @wishname.save
        format.html { redirect_to pages_result_path, notice: 'Wishname was successfully created.' }
      else
        format.html { render :back }
      end
    end
    # respond_to do |format|
    #   if @wishname.save
    #     format.html { redirect_to @wishname, notice: 'Wishname was successfully created.' }
    #     format.json { render json: @wishname, status: :created, location: @wishname }
    #   else
    #     format.html { render action: "new" }
    #     format.json { render json: @wishname.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PUT /wishnames/1
  # PUT /wishnames/1.json
  def update
    @wishname = Wishname.find(params[:id])

    respond_to do |format|
      if @wishname.update_attributes(params[:wishname])
        format.html { redirect_to @wishname, notice: 'Wishname was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @wishname.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wishnames/1
  # DELETE /wishnames/1.json
  def destroy
    @wishname = Wishname.find(params[:id])
    @wishname.destroy

    respond_to do |format|
      format.html { redirect_to wishnames_url }
      format.json { head :no_content }
    end
  end
end
