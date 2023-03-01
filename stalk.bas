  10 REM intro
      color 1, 8
      th_exec "figlet /cosmic stalk"
      print ""
      print "**************************************************"
      print "Stalk User Analysis Utility v1.0 (c) Delorean 2022"
      print "**************************************************"

  20 REM target
      input "Input User: " target$

  30 REM x procedure
      th_exec("finger ") + target$
      th_exec("inspect ") + target$
      th_exec("link ") + target$
      end
