class CreateMovies < ActiveRecord::Migration[8.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :year
      t.integer :review_score

      t.timestamps
    end
  end
end
