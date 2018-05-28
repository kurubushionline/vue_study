class CreateAssigns < ActiveRecord::Migration[5.2]
  def change
    create_table :assigns do |t|
      t.references :project, null: false
      t.references :user, null: false
      t.timestamps
    end
  end
end
