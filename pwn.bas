   10 REM intro
      print "****************************************"
      print "pwnsec Autorooter v1.4 (c) Delorean 2021"
      print "****************************************"

   20 REM Adjacent/Nonadjacent
      input "Adjacent Host [y/n]: " local$
      input "Operating System: " os$
      if local$ = "y" goto 30
      if local$ = "n" goto 70
      if local$ = "" goto 20
      if os$ = "" goto 20

   30 REM hostname input
      input "Hostname: " host$
      if host$ = "" goto 30
      input "Run Login Exploit [y/n]: " acct$
      if acct$ = "y" goto 40
      if acct$ = "n" goto 50

   40 REM login exploit
      th_exec("run ") + os$ + "acct.exe " + host$
      if th_haslogin(host$) goto 50
      goto 40

   50 REM ftp procedure
      print "Connecting to FTP..."
      th_exec("ftp ") + host$,out$
      print "*CONNECTION ESTABLISHED - UPLOADING TOOLKIT*"
      th_exec("put ") + os$ + "kit.exe",out$
      print "OSkit uploaded..."
      th_exec("put rootkit.exe"),out$
      print "Rootkit uploaded..."
      th_exec("put sentinel.exe"),out$
      print "Sentinel uploaded..."
      sleep 1
      print "*UPLOAD COMPLETE*"

   60 REM autologin procedure
      print "Logging into host..."
      sleep 1
      th_exec "q",out$
      th_exec "rlogin " + host$,out$

   70 REM rooting procedure
      print "Attempting Exploit..."
      sleep 1
      th_exec("run ") + os$ + "kit.exe y",out$
      th_exec("run rootkit.exe"),out$
      print "*ROOT ACHIEVED*"

   80 REM running sentinel
      input "Execute sentinel.exe [y/n]: " sent$
      if sent$ = "y" goto 90
      if sent$ = "n" goto end
      if sent$ = "" goto 80

   90 REM execute sentinel
      print "Running Sentinel..."
      sleep 1
      th_exec("run sentinel.exe y"),out$
      print "*SENTINEL HAS ASSUMED CONTROL*"
      end

    100 REM rooting failure
      color 1, 8
      print "*ABORTING - ROOT ACCESS BLOCKED*"
      end
