class CreateMedicationTypes < ActiveRecord::Migration
  def self.up
    create_table :medication_types do |t|
      t.string :name
      t.string :code
    end
  end

  def self.down
    drop_table :medication_types
  end
end
