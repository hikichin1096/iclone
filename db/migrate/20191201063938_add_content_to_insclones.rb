class AddContentToInsclones < ActiveRecord::Migration[5.2]
  def change
    add_column :insclones, :content, :text
  end
end
