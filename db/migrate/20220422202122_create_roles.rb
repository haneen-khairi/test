class CreateRoles < ActiveRecord::Migration[7.0]
  def change
    create_table :roles do |t|
      t.string     :name,   null: false, default: ''
      t.integer    :status, null: false, default: 1

      t.timestamps
    end
  end
end
