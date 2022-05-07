  10 REM intro
      color 1, 8
      th_exec "figlet /cosmic defcon"
      print ""
      print "********************************************"
      print "Defcon Mil/OS Utility v1.1 (c) Delorean 2021"
      print "********************************************"

  20 REM target
      th_exec("netstat")
      input "Target Host: " host$
      if host$ = "" then 20
      print "Connecting to FTP..."
      sleep 1
      th_exec("ftp ") + host$

  30 REM ftp procedure
      print "*CONNECTION ESTABLISHED - UPLOADING TOOLKIT*"
      sleep 1
      th_exec("put defcon.bas")
      print "Defcon Uploaded..."
      th_exec("put rootkit.exe")
      print "Rootkit Uploaded..."
      th_exec("put milkit.exe")
      print "Milkit Uploaded..."
      th_exec("put satan.exe")
      print "Satan Uploaded..."
      sleep 1
      print "*TOOLKIT SUCCESSFULLY UPLOADED*"

  40 REM attack
      input "Launch Exploit [y/n]" attack$
      if attack$ = "y" then 50
      if attack$ = "n" goto end

  50 REM host login
      print "Logging into host..."
      sleep 1
      th_exec "q"
      th_exec "rlogin " + host$

  60 REM exploit
      print "Attempting Exploit..."
      sleep 1
      th_exec("run milkit.exe y")
      th_exec("run rootkit.exe")
      end
