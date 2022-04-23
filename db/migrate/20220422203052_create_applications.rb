class CreateApplications < ActiveRecord::Migration[7.0]
  def change
    create_table :applications do |t|
      t.string :title
      t.text :description
      t.integer :status, null: false, default: 0

      t.references :user, index: true
      t.references :job, index: true
      t.timestamps
    end
  end
end
