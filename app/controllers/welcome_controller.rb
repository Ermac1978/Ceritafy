class WelcomeController < ApplicationController
  skip_before_action :authenticate, only: [:index]
  before_action :set_story, only: [:show]
  before_filter :log_impression, :only=> [:show]

  def log_impression
    @story = Story.find(params[:id])
    @story.impressions.create(ip_address: request.remote_ip,user_id:current_user.id)
  end

  def more_search
    @stories = Story.where("title like ?", "%#{params[:search_query]}%").order(params[:order_by] || "title ASC")
    render template: "more_stories/index"
  end

  # GET /stories
  # GET /stories.json
  def index
    @stories = Story.all
  end

  # GET /stories/1
  # GET /stories/1.json
  def show

  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_story
    @story = Story.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def story_params
    params.require(:story).permit(:user_story, :title, :user_text,
                                  chapters_attributes: [:id, :story_id, :user_text, :chapter_num, :_destroy,
                                                        options_attributes: [:id, :option_text, :chapter_id, :prev_chapter, :next_chapter, :next_chapter_id, :_destroy]]
    )
  end
end
