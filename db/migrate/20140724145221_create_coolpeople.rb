class CreateCoolpeople < ActiveRecord::Migration
  def change
    create_table :coolpeople do |t|
      t.string :name
      t.string :date
      t.string :location
      t.string :imgurl
      t.string :barpercent
      t.string :desc

      t.timestamps
    end
  end
end
