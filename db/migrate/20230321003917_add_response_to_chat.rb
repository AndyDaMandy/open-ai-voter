class AddResponseToChat < ActiveRecord::Migration[7.0]
  def change
    add_column :chats, :response, :text
  end
end
