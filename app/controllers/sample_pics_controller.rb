class SamplePicsController < ApplicationController
  before_action :set_sample_pic, only: [:show, :edit, :update, :destroy]

  # GET /sample_pics
  # GET /sample_pics.json
  def index
    @sample_pics = SamplePic.all
  end

  # GET /sample_pics/1
  # GET /sample_pics/1.json
  def show
  end

  # GET /sample_pics/new
  def new
    @sample_pic = SamplePic.new
  end

  # GET /sample_pics/1/edit
  def edit
  end

  # POST /sample_pics
  # POST /sample_pics.json
  def create
    @sample_pic = SamplePic.new(sample_pic_params)

    respond_to do |format|
      if @sample_pic.save
        format.html { redirect_to @sample_pic, notice: 'Sample pic was successfully created.' }
        format.json { render :show, status: :created, location: @sample_pic }
      else
        format.html { render :new }
        format.json { render json: @sample_pic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sample_pics/1
  # PATCH/PUT /sample_pics/1.json
  def update
    respond_to do |format|
      if @sample_pic.update(sample_pic_params)
        format.html { redirect_to @sample_pic, notice: 'Sample pic was successfully updated.' }
        format.json { render :show, status: :ok, location: @sample_pic }
      else
        format.html { render :edit }
        format.json { render json: @sample_pic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sample_pics/1
  # DELETE /sample_pics/1.json
  def destroy
    @sample_pic.destroy
    respond_to do |format|
      format.html { redirect_to sample_pics_url, notice: 'Sample pic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sample_pic
      @sample_pic = SamplePic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sample_pic_params
      params.require(:sample_pic).permit(:pic_file)
    end
end
