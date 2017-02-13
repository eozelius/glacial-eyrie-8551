class CreateBlips < ActiveRecord::Migration
  def change
    create_table :blips do |t|
      t.string :title
      t.text :body
      t.float :x
      t.float :y
      t.datetime :date

      t.references :journey, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end