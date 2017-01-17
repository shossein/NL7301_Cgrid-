 $GLOBAL
   FRINGE = 2,
   OFFSET = 3,
   LEVEL2 = .TRUE.,
   ORPHFIX = .TRUE.,
   $END



 $MESH NAME =     'main', KINCLUDE=  2, -1, $END

 $MESH NAME =     'flap', KINCLUDE=  2, -1, $END

 $MESH NAME = 'boxinner', KINCLUDE= 2, -1, OFFSET=2, $END

 $MESH NAME = 'boxouter', KINCLUDE= 2, -1, OFFSET=2, $END

 $BCINP ISPARTOF =     'main', 
    IBTYP =     5,   51,   -1,   -1,   21,
    IBDIR =     3,    3,    3,    3,    2,
    JBCS  =   100,    1,   99, -100,    1,
    JBCE  =  -100,   99,  100,  -99,   -1,
    KBCS  =     1,    1,    1,    1,    1,
    KBCE  =    -1,   -1,   -1,   -1,    1,
    LBCS  =     1,    1,    1,    1,    1,
    LBCE  =     1,    1,    1,    1,   -1,
    Y2D   = 1,
    $END

 $BCINP ISPARTOF =     'flap', 
    IBTYP =     5,   51,   -1,   -1,   21,
    IBDIR =     3,    3,    3,    3,    2,
    JBCS  =   100,    1,   99, -100,    1,
    JBCE  =  -100,   99,  100,  -99,   -1,
    KBCS  =     1,    1,    1,    1,    1,
    KBCE  =    -1,   -1,   -1,   -1,    1,
    LBCS  =     1,    1,    1,    1,    1,
    LBCE  =     1,    1,    1,    1,   -1,
    Y2D   = 1,
    $END

 $BCINP ISPARTOF = 'boxinner', 
    IBTYP =    21,
    IBDIR =     2,
    JBCS  =     1,
    JBCE  =    -1,
    KBCS  =     1,
    KBCE  =     1,
    LBCS  =     1,
    LBCE  =    -1,
    Y2D   = 1,
    $END

 $BCINP ISPARTOF = 'boxouter', 
    IBTYP =    47,   30,   21,   47,   47,
    IBDIR =     1,   -1,    2,    3,   -3,
    JBCS  =     1,   -1,    1,    1,    1,
    JBCE  =     1,   -1,   -1,   -1,   -1,
    KBCS  =     1,    1,    1,    1,    1,
    KBCE  =    -1,   -1,    1,   -1,   -1,
    LBCS  =     1,    1,    1,    1,   -1,
    LBCE  =    -1,   -1,   -1,    1,   -1,
    Y2D   = 1,
    $END
