;Model Desc: basic one cmt random ka v cl
;Project Name: raltest
;Project ID: NO PROJECT DESCRIPTION

;Project ID: NO PROJECT DESCRIPTION
 
$PROB RUN# analysis1
$INPUT C  ID TREAT TIME DV AMT EVID sex race weight height age HC
$DATA RAL_FOR_NONMEM.CSV IGNORE=C
$SUBROUTINES ADVAN2 TRANS2
$PK
   TVCL=THETA(1)
   CL=TVCL*EXP(ETA(1))
   TVV=THETA(2)
   V=TVV*EXP(ETA(2))
   TVKA=THETA(3)
   KA=TVKA*EXP(ETA(3))
   S2=V
 
$ERROR
   Y = F + F*ERR(1)+ERR(2)
 IPRE=F
 
$EST METHOD=1 INTERACTION PRINT=5 MAX=9999 SIG=3    MSFO=analysis1.msf 
$THETA 
  (0, 64);[CL]
  (0, 281);[V]
  (0, .65);[KA]
$OMEGA
  0.04 ;[P] omega(1,1)
  0.04 ;[P] omega(2,2)
  0.04 ;[P] omega(3,3)
$SIGMA
  0.04 ;[P] sigma(1,1)
  0.04 ;[A] sigma(2,2)
$COV
$TABLE ID TIME ONEHEADER NOPRINT FILE=analysis1.tab

