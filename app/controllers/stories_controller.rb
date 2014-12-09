class StoriesController < ApplicationController
  before_action :set_story, only: [:show, :edit, :update, :destroy]
  before_action :set_order_by, only: [:search, :index]

  impressionist actions: [:show]

  def something

  end


  def search
    @stories = Story.for_user(current_user).where("title like ?", "%#{params[:search_query]}%").order(@order_by)
    render template: "stories/index"
  end



  # GET /stories
  # GET /stories.json
  def index
    # @stories = Story.all
    @stories = Story.for_user(current_user)
  end

  # GET /stories/1
  # GET /stories/1.json
  def show

  end

  # GET /stories/new
  def new
    @story = Story.new
  end

  # GET /stories/1/edit
  def edit
  end

  # POST /stories
  # POST /stories.json
  def create
    @story = Story.new(story_params)
    @story.user = current_user
    respond_to do |format|
      if @story.save
      #  format.html { redirect_to @story, notice: 'Story was successfully created.' }
        format.html { redirect_to stories_path }
        format.json { render :show, status: :created, location: @story }
      else
        format.html { render :new }
        format.json { render json: @story.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stories/1
  # PATCH/PUT /stories/1.json
  def update
    respond_to do |format|
      if @story.update(story_params)
        format.html { redirect_to @story, notice: 'Story was successfully updated.' }
        format.json { render :show, status: :ok, location: @story }
      else
        format.html { render :edit }
        format.json { render json: @story.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stories/1
  # DELETE /stories/1.json
  def destroy
    @story.destroy
    respond_to do |format|
      format.html { redirect_to stories_url, notice: 'Story was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_story
      @story = Story.find(params[:id])
    end

    def set_order_by
      @order_by = params[:order_by] || "title ASC"
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def story_params
      params.require(:story).permit(:user_story, :title, :user_text,
                                    chapters_attributes: [:id, :story_id, :user_text, :chapter_num, :_destroy,
                                    options_attributes: [:id, :option_text, :chapter_id, :prev_chapter, :next_chapter, :next_chapter_id, :_destroy]]
                                   )
    end
end
