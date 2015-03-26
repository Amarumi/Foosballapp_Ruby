class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
    	t.string :name
    	t.string :surname
    	t.string :result
    	t.references :user, index: true
    	t.timestamps null: false
    end
 	
 	create_record :record do |t|
 		t.belongs_to: user, index:true
 		t.datetime :order_date
    	t.string :result
    	t.references :user, index: true
    	t.timestamps null: false
    end

    add_foreign_key :players, :users
  end
end
