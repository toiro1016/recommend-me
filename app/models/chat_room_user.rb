class ChatRoomUser < ApplicationRecord

  t.references :chat_room, null: false, foreign_key: true
  t.references :user　　　, null: false, foreign_key: true
end
