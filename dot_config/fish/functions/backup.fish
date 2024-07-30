function backup
  set BW_SESSION Ln3pyAKkE2exdlgLgcjO3RhxBe142cT8R6CChWJ+c9NY8AjGXe0mynF49Kc2lzstLnOJ0yb3scNPzC7MRXs1/g==
  set RESTIC_PASSWORD (bw get item 7fb38c5d-4301-4ae9-96bf-b1bd002e972a | jq '.notes')
  restic -r rclone:onedrive:Database --exclude='.stfolder' backup ~/Database --skip-if-unchanged
end
