class AddingRatingTable < ActiveRecord::Migration[5.2]
  def change
  	create_table :ratings do |t|
  		t.belongs_to :new
  		t.belongs_to :user
      t.integer :rating_value

      t.timestamps
    end
  end
end
