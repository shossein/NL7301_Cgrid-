-0.2, 400.0, 400.0, -1.0E+6, 0, -100.0    FSMACH,ALPHA,BETA,REY,GAMINF,TINF
1                       NREF
1.0, 2.0, 0.25, 0.0, 0.0       REFL,REFA,XMC,YMC,ZMC
2                       NSURF

1, 1                 NRSUB, NREFS  (main Family)
1 3 100 -100 1 -1 1  1  NG,IBDIR,JS,JE,KS,KE,LS,LE,IFAM  main
0         NPRI

1, 1                 NRSUB, NREFS  (flap Family)
2 3 100 -100 1 -1 1  1  NG,IBDIR,JS,JE,KS,KE,LS,LE,IFAM  flap
0         NPRI

3             NCOMP

ALL
2, 1         NIS, IREFC
1 2                     (surface numbers)

main
1, 1             NIS, IREFC
1              (surface numbers)

flap
1, 1             NIS, IREFC
2              (surface numbers)

