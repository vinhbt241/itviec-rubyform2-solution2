class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :email, null: false, index: true
      t.boolean :subscribed, default: false, index: true
      t.timestamps
    end
  end
end
