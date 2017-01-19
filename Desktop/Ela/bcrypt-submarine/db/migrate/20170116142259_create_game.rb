class CreateGame < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.belongs_to :user, index: true
      t.integer :score
      t.timestamps
    end  
  end
end
