class CreateLocks < ActiveRecord::Migration
  def change
    create_table :locks do |t|
      t.string :name
      t.string :note

      t.timestamps null: false
    end
  end
end
