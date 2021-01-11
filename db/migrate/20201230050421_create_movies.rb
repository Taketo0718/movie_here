class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string   :title,       null: false
      t.text     :youtube_url
      t.text     :tweet_url
      t.timestamps
    end
  end
end
