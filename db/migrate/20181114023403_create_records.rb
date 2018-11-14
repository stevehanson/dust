class CreateRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :records do |t|
      t.string :title
      t.text :content
      t.string :author
      t.string :type
      t.decimal :latitude, precision: 16, scale: 10
      t.decimal :longitude, precision: 16, scale: 10
      t.datetime :date
      t.integer :privacy, default: 0, null: false

      t.timestamps
    end
  end
end
