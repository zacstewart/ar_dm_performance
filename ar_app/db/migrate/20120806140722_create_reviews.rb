class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.references :widget
      t.text :comment
      t.integer :rating

      t.timestamps
    end
    add_index :reviews, :widget_id
  end
end
