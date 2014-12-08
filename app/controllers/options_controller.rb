class OptionsController < InheritedResources::Base

  private

    def option_params
      params.require(:option).permit(:chapter_id, :option_text, :prev_chapter, :next_chapter, :next_chapter_id)
    end
end