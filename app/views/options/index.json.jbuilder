json.array!(@options) do |option|
  json.extract! option, :id, :chapter_id, :option_text, :prev_chapter, :next_chapter
  json.url option_url(option, format: :json)
end
