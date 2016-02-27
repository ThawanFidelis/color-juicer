class CreateJuicers < ActiveRecord::Migration
  def change
    create_table :juicers do |t|
      t.string :url
      t.string :colors

      t.timestamps null: false
    end
  end
end
