class CreateAllevents < ActiveRecord::Migration[5.1]
  def change
    create_table :allevents do |t|
      t.string :workshop
      t.string :others

      t.timestamps
    end
  end
end
