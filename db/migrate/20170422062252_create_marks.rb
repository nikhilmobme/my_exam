class CreateMarks < ActiveRecord::Migration[5.0]
  def change
    create_table :marks do |t|
      t.float :marks
      t.references :subject, foreign_key: true
      t.references :exam, foreign_key: true
      t.references :student, foreign_key: true

      t.timestamps
    end
  end
end
