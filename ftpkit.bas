	10 REM intro
	   color 6, 8
	   print "****************************************"
	   print "pwnsec FTPkit v1.3 (c) Delorean 2021"
	   print "****************************************"

	20 REM intro
	   input "Host or FTPD? [1/2] " uftp$
	   input "Target OS: " os$
	   if uftp$ = "1" then 30
	   if uftp$ = "2" then 40
	   if uftp$ = "" then 20
	   if os$ = "" then 20

	30 REM for standard host
	   input "Hostname: " host$
	   if host$ = "" then 30
	   print "Connecting to FTP..."
	   sleep 1
	   th_exec("ftp ") + host$,out$
	   goto 50

	40 REM for ftpd
	   print "Dialing telehack..."
	   sleep 1
	   th_exec ("ftp 10.63.169.66"),out$
	   goto 50

	50 REM ftp procedure
	   print "*CONNECTION ESTABLISHED - DOWNLOADING TOOLKIT*"
		 color 3, 8
	   th_exec("get porthack.exe"),out$
		 print "Porthack downloaded..."
	   th_exec("get rootkit.exe"),out$
		 print "Rootkit downloaded..."
	   th_exec("get sentinel.exe"),out$
		 print "Sentinel downloaded..."
	   th_exec("get ") + os$ + "kit.exe",out$
		 print "OSkit downloaded..."
	   th_exec("get ") + os$ + "acct.exe",out$
		 print "OSacct downloaded..."
	   th_exec("get pwn.bas"),out$
		 print "Pwn downloaded..."
	   print "*TOOLKIT SUCCESSFULLY DOWNLOADED*"
