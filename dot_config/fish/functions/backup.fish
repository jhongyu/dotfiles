function backup
  restic -r rclone:onedrive:Database --exclude='.stfolder' backup ~/Database --skip-if-unchanged
end
