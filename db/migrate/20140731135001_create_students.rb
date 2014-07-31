class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :github_name
      t.string :repository
      t.string :last_commit

      t.timestamps
    end
  end
end
