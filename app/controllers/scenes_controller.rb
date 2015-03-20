class ScenesController < ApplicationController
  before_action :set_story
  before_action :set_scene, only: [:show, :edit, :update, :destroy]

  # GET /scenes
  # GET /scenes.json
  def index
    @scenes = @story.scenes.all
  end

  # GET /scenes/1
  # GET /scenes/1.json
  def show
  end

  # GET /scenes/new
  def new
    @scene = @story.scenes.new
  end

  # GET /scenes/1/edit
  def edit
  end

  # POST /scenes
  # POST /scenes.json
  def create
    @scene = @story.scenes.new(scene_params)

    respond_to do |format|
      if @scene.save
        format.html { redirect_to story_scene_path(@story, @scene), notice: 'Scene was successfully created.' }
        format.json { render :show, status: :created, location: @scene }
      else
        format.html { render :new }
        format.json { render json: @scene.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scenes/1
  # PATCH/PUT /scenes/1.json
  def update
    respond_to do |format|
      if @scene.update(scene_params)
        format.html { redirect_to story_scene_path(@story, @scene), notice: 'Scene was successfully updated.' }
        format.json { render :show, status: :ok, location: @scene }
      else
        format.html { render :edit }
        format.json { render json: @scene.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scenes/1
  # DELETE /scenes/1.json
  def destroy
    @scene.destroy
    respond_to do |format|
      format.html { redirect_to scenes_url, notice: 'Scene was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    def set_scene
      @scene = @story.scenes.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def scene_params
      params.require(:scene).permit(:title, :description, :story_id)
    end
end
