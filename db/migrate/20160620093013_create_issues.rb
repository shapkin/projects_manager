class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.belongs_to :user, index: true
      t.belongs_to :project, index: true
      t.string :title, null: false
      t.text :description
      t.integer :type, null: false
      t.integer :status, default: 0
      t.integer :priority, default: 0

      t.timestamps
    end
  end
end
