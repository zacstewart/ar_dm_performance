class CreateWidgets < ActiveRecord::Migration
  def change
    create_table :widgets do |t|
      t.string :name
      t.integer :length
      t.text :description
      t.datetime :occurred_at

      t.timestamps
    end
  end
end
