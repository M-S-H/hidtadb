# encoding: utf-8

##
# Backup Generated: my_backup
# Once configured, you can run the backup with the following command:
#!!!!!!!!!
# $ backup perform -t my_backup -c config/models/my_backup.rb
#
Model.new(:my_backup, 'Routine Back up of database') do
  ##
  # Split [Splitter]
  #
  # Split the backup file in to chunks of 250 megabytes
  # if the backup file size exceeds 250 megabytes
  #
  split_into_chunks_of 250

  ##
  # PostgreSQL [Database]
  #
  database PostgreSQL do |db|
    # To dump all databases, set `db.name = :all` (or leave blank)
    db.name               = "hidta_development"
    db.username           = "postgres"
    db.password           = "password"
    db.host               = "localhost"
    db.port               = 5432
    db.socket             = "/tmp/pg.sock"
    # When dumping all databases, `skip_tables` and `only_tables` are ignored.
    db.skip_tables        = ["skip", "these", "tables"]
    db.only_tables        = ["only", "these", "tables"]
    db.additional_options = ["-xc", "-E=utf8"]
  end

  ##
  # Local (Copy) [Storage]
  #
  store_with Local do |local|
    local.path       = "~/backups/"
    local.keep       = 5
  end

  ##
  # Gzip [Compressor]
  #
  compress_with Gzip

  ##
  # Mail [Notifier]
  #
  # The default delivery method for Mail Notifiers is 'SMTP'.
  # See the Wiki for other delivery options.
  # https://github.com/meskyanichi/backup/wiki/Notifiers
  #
  #must set up email to properly work
 # notify_by Mail do |mail|
  #  mail.on_success           = true
   
   # mail.on_warning           = true
   # mail.on_failure           = true

   # mail.from                 = "cberigan1@gmail.com"
   # mail.to                   = "cberigan1@gmail.com"
   # mail.address              = "smtp.gmail.com"
   # mail.port                 = 465
   # mail.domain               = "gmail.com"
   # mail.user_name            = "cberigan1@gmail.com"
   # mail.password             = "c^81488^c"
   # mail.authentication       = "plain"
   # mail.encryption           = :starttls
  #end

end
