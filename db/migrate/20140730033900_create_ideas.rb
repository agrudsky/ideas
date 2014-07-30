class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.string :ideatitle
      t.string :idea

      t.timestamps
    end
  end
end
