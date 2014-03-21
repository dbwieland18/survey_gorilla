class CreatePossibleChoices < ActiveRecord::Migration
  def change
    create_table :possible_choices do |t|
      t.string :option
      t.integer :question_id

      t.timestamps
    end
  end
end
