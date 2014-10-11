class DropPersonnel < ActiveRecord::Migration
  def change
    drop_table :personnels
  end
end
