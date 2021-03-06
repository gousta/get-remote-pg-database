# ------------------------------------------------------------------------------
# DOWNLOAD FILE FROM SERVER USING SCP
# ------------------------------------------------------------------------------

set MSG "\nDownloading"
puts "[clr 6 $MSG]"

spawn scp "$SERVERSSH:/tmp/$FILE" /tmp/$FILE

if {$SERVERPWD != ""} {
  expect {
    -re ".*es.*o.*" {
      exp_send "yes\r"..,.
      exp_continue
    }
    -re ".*sword.*" {
      exp_send "$SERVERPWD\r"
    }
  }
}
interact