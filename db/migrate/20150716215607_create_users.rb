class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nome
      t.string :avatar

      t.timestamps null: false
    end
  end
end
