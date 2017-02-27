class DropChat < ActiveRecord::Migration[5.0]
  def change
  	drop_table :chat_messages
  	drop_table :chat_rooms
  end
end
