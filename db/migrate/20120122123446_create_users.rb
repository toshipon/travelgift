class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :fbid

      t.timestamps
    end
  end
end
