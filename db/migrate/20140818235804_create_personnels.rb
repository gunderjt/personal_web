class CreatePersonnels < ActiveRecord::Migration
  def change
    create_table :personnels do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :salutation
      t.boolean :mailing_list
      t.boolean :formally_affiliated
      t.boolean :informally_affiliated
      t.boolean :ibs_retiree
      t.boolean :ibs_rostered
      t.text :notes
      t.text :research_interests
      t.text :skills
      t.text :biography
      t.integer :employee_id, null: false

      t.timestamps
    end
  end
end
