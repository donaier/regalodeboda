class CreateRegalos < ActiveRecord::Migration
  def change
    create_table :regalos do |t|
      t.string :name
      t.string :link
      t.string :donor

      t.timestamps
    end
  end
end
