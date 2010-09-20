-- From http://subtlegradient.com/articles/2006/07/21/growl-notifications-for-ical-how-to.html
on send_mail_sbr(subjectLine, messageText, myrecipient)
	if myrecipient = "growl@localhost.local" then
		send_mail_sbr_GROWL(subjectLine, messageText, myrecipient)
	else
		send_mail_sbr_EMAIL(subjectLine, messageText, myrecipient)
	end if
end send_mail_sbr

on send_mail_sbr_EMAIL(subjectLine, messageText, myrecipient)
	tell application "Mail"
		set mymail to (make new outgoing message at the beginning of outgoing messages with properties {subject:subjectLine, content:messageText})
		tell mymail to make new to recipient at beginning of to recipients with properties {address:myrecipient}
		send mymail
	end tell
end send_mail_sbr_EMAIL

on send_mail_sbr_GROWL(subjectLine, messageText, myrecipient)
	tell application "GrowlHelperApp"
		set theName to "New Event"
		set theAppName to "Custom iCal Notifications"
		set the allNotificationsList to {theName}
		set the enabledNotificationsList to {theName}

		register as application theAppName ¬
			all notifications allNotificationsList ¬
			default notifications enabledNotificationsList ¬
			icon of application "iCal"
		notify with name theName ¬
			title subjectLine ¬
			description messageText ¬
			application name theAppName ¬
			with sticky
	end tell
end send_mail_sbr_GROWL
