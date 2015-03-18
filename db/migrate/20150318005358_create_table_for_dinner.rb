class CreateTableForDinner < ActiveRecord::Migration
  def change
    create_table :dinners do |t|
      t.string :main_source
      t.string :sauce
      t.string :starch
      t.string :veggie
  end
end
