class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :name,            null: false
      t.string :content,         null: false
      t.integer :prioity_id,     null: false
      t.integer :daedline_month, null: false
      t.integer :daedline_day,   null: false
      t.references :user,        null: false, foreign_key: true
      t.timestamps
    end
  end
end
