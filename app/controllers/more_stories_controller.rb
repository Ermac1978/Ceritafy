class MoreStoriesController < ApplicationController
  before_action :set_story, only: [:show]
  before_action :set_order_by, only: [:search, :index]

  impressionist actions: [:show]

  def search
    @stories = Story.all.where("title like ?", "%#{params[:search_query]}%").order(@order_by)
    render template: "more_stories/index"
  end

  # GET /stories
  # GET /stories.json
  def index
     @stories = Story.all.order(@order_by)
    # @stories = Story.for_user(current_user).order(@order_by)
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

  def set_order_by
    @order_by = params[:order_by] || "title ASC, impressions_count ASC, created_at DESC, updated_at DESC"
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def story_params
    params.require(:story).permit(:user_story, :title, :user_text,
                                  chapters_attributes: [:id, :story_id, :user_text, :chapter_num, :_destroy,
                                                        options_attributes: [:id, :option_text, :chapter_id, :prev_chapter, :next_chapter, :next_chapter_id, :_destroy]]
    )
  end
end
