class CreateJuicers < ActiveRecord::Migration
  def change
    create_table :juicers do |t|

      t.timestamps null: false
    end
  end
end
