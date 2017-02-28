module MailboxHelper

  def unread_messages_count
    # how to get the number of unread messages for the current user
    # using mailboxer
  	mailbox.inbox(:unread => true).count(session[:user_id])
  
  end


end
