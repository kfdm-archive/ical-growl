# Attempt to automate this
# http://subtlegradient.com/articles/2006/07/21/growl-notifications-for-ical-how-to.html
ICAL = '/Applications/iCal.app/Contents/Resources/Scripts/'
ICAL_HELP = '/System/Library/Frameworks/CalendarStore.framework/Versions/A/Resources/iCal Helper.app/Contents/Resources/Scripts/'
ORIGINAL = 'Mail.scpt'
BACKUP = 'Mail.backup.scpt'

task :default => [:install]

desc 'Install iCal-growl'
task :install do
	File::exists?(ICAL+ORIGINAL) or raise 'iCal directory missing'
	File::exists?(ICAL_HELP+ORIGINAL) or raise 'iCal Helper directory missing'
	not File::exists?(ICAL+BACKUP) or raise 'Already installed'
	not File::exists?(ICAL_HELP+BACKUP) or raise 'Already installed'
	mv ICAL+ORIGINAL,ICAL+BACKUP
	mv ICAL_HELP+ORIGINAL,ICAL_HELP+BACKUP
	sh "osacompile -o '#{ICAL+ORIGINAL}' Mail.applescript"
	sh "osacompile -o '#{ICAL_HELP+ORIGINAL}' Mail.applescript"
end

desc 'Remove iCal-growl'
task :uninstall do
	File::exists?(ICAL+ORIGINAL) or raise 'iCal directory missing'
	File::exists?(ICAL_HELP+ORIGINAL) or raise 'iCal Helper directory missing'
	File::exists?(ICAL+BACKUP) or raise 'Missing Backup'
	File::exists?(ICAL_HELP+BACKUP) or raise 'Missing Backup'
	mv ICAL+BACKUP,ICAL+ORIGINAL
	mv ICAL_HELP+BACKUP,ICAL_HELP+ORIGINAL
end