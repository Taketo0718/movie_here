class CreateTheaters < ActiveRecord::Migration[6.0]
  def change
    create_table :theaters do |t|
      t.string :name,         null: false
      t.float  :longitude,    null: false
      t.float  :latitude,     null: false
      t.text   :scraping_url
      t.timestamps
    end
  end
end
