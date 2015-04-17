class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :load_stories

  def set_story
    @story = Story.find(params[:story_id])
	end

  def set_scene
    set_story
    @scene = @story.scenes.find(params[:scene_id])
  end

	def load_stories
		@stories = Story.all
	end

end
