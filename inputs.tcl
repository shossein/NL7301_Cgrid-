#
# inputs.tcl
#
#=================================================================================================
# Case Inputs
#-------------------------------------------------
set SREF  2.0
set CREF  1.0
set XMC   0.25
set YMC   0.0
set ZMC   0.0
#---------
set MACH  0.185
set ALPHA 6.0
set REY   2.51e6
#---------
set NGLVL 3
set STRCH 1.12
#--------------------------

#=================================================================================================
# HYPGEN Inputs
#-------------------------------------------------
set default(srmax) $STRCH
set default(klayer)  3 
set default(zreg)  1.0 
set default(dz0)   1e-6
set default(dz1)   0.0 
set default(ibcja) 2 
set default(ibcjb) 2 
set default(ibcka) 2 
set default(ibckb) 2 
set default(smu2)  1.0 
set default(itsvol) 10 
set default(timj)  0.0 
set default(timk)  0.0 
set default(iaxis) 1 
set default(exaxis) 0.3 
set default(volres) 0.3 
# set wake(nomakevol) 1
#--------------------------

#=================================================================================================
# BOX GRID Inputs
#-------------------------------------------------
#
# box defaults
#
#set default(imode)   1 	;# Unknown error due to setting imode...does not matter because 1 is default
set default(mlevel) $NGLVL
set default(iopt)           1
set default(istr)           1
set default(dolka) 0.0
set default(dolkb) 0.0
set default(auto_space)  "1"
set default(ymin)        -1.0 
set default(ymax)         1.0 
#--------------------------
#
# boxinner
#
set boxinner(box)  "model/main.vol model/flap.vol"
set boxinner(dolja) [expr 10.0*$CREF]
set boxinner(doljb) [expr 10.0*$CREF]
set boxinner(dolla) [expr 10.0*$CREF]
set boxinner(dollb) [expr 10.0*$CREF]
set boxinner(jch,kch,lch)    "0,0,-1"
set boxinner(boxdy) 1.0
if { 0 == 1 } {
   set boxinner(auto_space)  "0"
   set boxinner(boxdx) [expr 0.1*$CREF]
   set boxinner(boxdz) [expr 0.1*$CREF]
}
set Ovr(boxinner,ibtyp) "21"
set Ovr(boxinner,ibdir) " 2"
set Ovr(boxinner,jbcs)  " 1"
set Ovr(boxinner,jbce)  "-1"
set Ovr(boxinner,kbcs)  " 1"
set Ovr(boxinner,kbce)  " 1"
set Ovr(boxinner,lbcs)  " 1"
set Ovr(boxinner,lbce)  "-1"
#--------------------------
#
# boxouter
#
set boxouter(box) "model/boxinner.vol"
set boxouter(dolja) [expr 100.0*$CREF]
set boxouter(doljb) [expr 100.0*$CREF]
set boxouter(dolla) [expr 100.0*$CREF]
set boxouter(dollb) [expr 100.0*$CREF]
set boxouter(jch,kch,lch)    "0,0,-1"
set boxouter(boxdy) 1.0
set Ovr(boxouter,ibtyp) "47 30 21 47 47"
set Ovr(boxouter,ibdir) " 1 -1  2  3 -3"
set Ovr(boxouter,jbcs)  " 1 -1  1  1  1"
set Ovr(boxouter,jbce)  " 1 -1 -1 -1 -1"
set Ovr(boxouter,kbcs)  " 1  1  1  1  1"
set Ovr(boxouter,kbce)  "-1 -1  1 -1 -1"
set Ovr(boxouter,lbcs)  " 1  1  1  1 -1"
set Ovr(boxouter,lbce)  "-1 -1 -1  1 -1"
#--------------------------

#=================================================================================================
# PEGASUS5 Inputs
#-------------------------------------------------
# GLOBAL Input Block
#------------------------------
 set default(offset)      3
 set default(fringe)      2
 #set default(hcut)     .TRUE.
 set default(level2)   .TRUE.
 set default(outer)    .TRUE.
 set default(orphfix)  .TRUE.
#set default(angle)      40.
#set default(qcutoff)     0.3
#set default(distance)   20
#set default(cnx)      2048
#set default(cny)      1024
#set default(cnz)       512
#set default(eps)         0.005
#------------------------------
#set BOUNDARY(name) ""
#set SURFACE(name)  ""
#set BOX(name)      ""
#set REGION(name)   ""
#set VOLUME(name)   ""
#set HCUT(name)     ""
#set LEVEL2(exclude)     ""
#------------------------------
 set boxinner(offset) 2 
 set boxouter(offset) 2 
#------------------------------

#=================================================================================================
# MIXSUR Inputs
#-------------------------------------------------
set MIXSUR(fsmach) -999.
set MIXSUR(alpha)  -999.
set MIXSUR(beta)   -999.
set MIXSUR(rey)    -999.
set MIXSUR(gaminf) -999.
set MIXSUR(tinf)   -999.
set MIXSUR(refa)   $SREF
set MIXSUR(refl)   $CREF
set MIXSUR(xmc)    $XMC
set MIXSUR(ymc)    $YMC
set MIXSUR(zmc)    $ZMC
#------------------------------

#=================================================================================================
# MIXSUR Component Inputs
#-------------------------------------------------
#set COMPONENT(name)    "Airfoil"
#set component(Airfoil) "main flap"

#=================================================================================================
# OVERFLOW Inputs
#-------------------------------------------------
# GLOBAL Input Block
#------------------------------
 set Ovr(restrt)      .F.
 set Ovr(nqt)         102
 set Ovr(nsteps)      10000
 set Ovr(nsave)        5000
 set Ovr(nfomo)        1
#set Ovr(save_hiorder) 2
#set Ovr(istart_qavg)  9990000
 set Ovr(multig)      .F.
 set Ovr(fmg)         .F.
#set Ovr(fmgcyc)      "500 500"
 set Ovr(nglvl)        0
#set Ovr(nqc)          0
#set Ovr(walldist)     0
#set Ovr(debug)        0
#set Ovr(max_grid_size) 1001
#------------------------------
# FLOINP Input Block
#------------------------------
 set Ovr(fsmach)   $MACH
 set Ovr(alpha)    $ALPHA
 set Ovr(rey)      $REY
 set Ovr(retinf)   1e1
 set Ovr(xkinf)    5.0e-5
#set Ovr(beta)     0.00
#set Ovr(tinf)     0.00
#set Ovr(gaminf)   1.4
#set Ovr(pr)       0.72
#set Ovr(prt)      0.9
#------------------------------
# Grid Input Block(s)
#------------------------------
 set Ovr(main,iter)        1
 set Ovr(main,irhs)        0
 set Ovr(main,ilhs)        2
 set Ovr(main,idiss)       4
 set Ovr(main,bimin)       1.0
 set Ovr(main,itime)       4
 set Ovr(main,cflmin)      2.0
 set Ovr(main,cflmax)     10.0
 set Ovr(main,ispac)       2
 set Ovr(main,smoo)        0.0
 set Ovr(main,dis2)        0.0
 set Ovr(main,dis4)        0.02
 set Ovr(main,fso)         4
 set Ovr(main,visc)        .T.
 #set Ovr(main,irc)        1
 set Ovr(flap,visc)        .T.
 #set Ovr(flap,irc)        1
 set Ovr(main,istrain)     2
#set Ovr(main,itert)       1
#set Ovr(main,cflt)        4.
