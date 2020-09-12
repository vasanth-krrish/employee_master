class CreateSearchBies < ActiveRecord::Migration[5.2]
  def change
    create_table :search_bies do |t|
      t.string :degree
      t.string :skill

      t.timestamps
    end
  end
end
