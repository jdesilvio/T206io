class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :card_name

      t.timestamps null: false
    end
  end
end
