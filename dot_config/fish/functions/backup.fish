function backup
  restic -r rclone:onedrive:Database --exclude='.stfolder' backup ~/Database --skip-if-unchanged --password-file=~/restic_pwd
end
