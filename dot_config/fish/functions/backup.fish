function backup
  set -fx RESTIC_PASSWORD (bw get item 7fb38c5d-4301-4ae9-96bf-b1bd002e972a | jq '.notes')
  restic -r rclone:onedrive:Database --exclude='.stfolder' backup ~/Database --skip-if-unchanged
end
