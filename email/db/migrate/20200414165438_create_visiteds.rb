class CreateVisiteds < ActiveRecord::Migration[6.0]
  def change
    create_table :visiteds do |t|
      t.integer :times

      t.timestamps
    end
  end
end
