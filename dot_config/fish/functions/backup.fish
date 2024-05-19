function backup
  restic -r rclone:onedrive:Database --exclude='.stfolder' backup ~/Database
end
