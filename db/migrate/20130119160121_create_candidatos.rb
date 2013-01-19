class CreateCandidatos < ActiveRecord::Migration
  def change
    create_table :candidatos do |t|
      t.string :name
      t.text :text
      t.integer :number_of_persons

      t.timestamps
    end
  end
end
