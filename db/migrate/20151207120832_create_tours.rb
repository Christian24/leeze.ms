class CreateTours < ActiveRecord::Migration
  def change
    create_table :tours do |t|
      t.string :title
      t.string :teaser
      t.text :description
      t.text :url

      t.timestamps null: false
    end
  end
end
