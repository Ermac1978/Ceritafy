class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.integer :chapter_id
      t.string :option_text
      t.integer :prev_chapter
      t.integer :next_chapter

      t.timestamps
    end
  end
end
