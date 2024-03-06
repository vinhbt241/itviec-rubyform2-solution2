class CreateNotifications < ActiveRecord::Migration[7.1]
  def change
    create_table :notifications do |t|
      t.string :type, null: false, index: true
      t.jsonb :params
      t.references :recipient, polymorphic: true
      t.timestamps
    end
  end
end
