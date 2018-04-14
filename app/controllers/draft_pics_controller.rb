class DraftPicsController < ApplicationController
  before_action :set_draft_pic, only: [:show, :edit, :update, :destroy]

  # GET /draft_pics
  # GET /draft_pics.json
  def index
    @draft_pics = DraftPic.all
  end

  # GET /draft_pics/1
  # GET /draft_pics/1.json
  def show
  end

  # GET /draft_pics/new
  def new
    @draft_pic = DraftPic.new
  end

  # GET /draft_pics/1/edit
  def edit
  end

  # POST /draft_pics
  # POST /draft_pics.json
  def create
    @draft_pic = DraftPic.new(draft_pic_params)

    respond_to do |format|
      if @draft_pic.save
        format.html { redirect_to @draft_pic, notice: 'Draft pic was successfully created.' }
        format.json { render :show, status: :created, location: @draft_pic }
      else
        format.html { render :new }
        format.json { render json: @draft_pic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /draft_pics/1
  # PATCH/PUT /draft_pics/1.json
  def update
    respond_to do |format|
      if @draft_pic.update(draft_pic_params)
        format.html { redirect_to @draft_pic, notice: 'Draft pic was successfully updated.' }
        format.json { render :show, status: :ok, location: @draft_pic }
      else
        format.html { render :edit }
        format.json { render json: @draft_pic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /draft_pics/1
  # DELETE /draft_pics/1.json
  def destroy
    @draft_pic.destroy
    respond_to do |format|
      format.html { redirect_to draft_pics_url, notice: 'Draft pic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_draft_pic
      @draft_pic = DraftPic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def draft_pic_params
      params.require(:draft_pic).permit(:pic_file)
    end
end
