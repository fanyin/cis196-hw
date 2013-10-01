class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :priority
      t.boolean :completed
      t.references :tasklist, index: true

      t.timestamps
    end
  end
end
