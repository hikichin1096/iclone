class CreateInsclones < ActiveRecord::Migration[5.2]
  def change
    create_table :insclones do |t|

      t.timestamps
    end
  end
end
