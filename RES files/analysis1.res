Thu 12/15/2016 
08:37 PM
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

  
NM-TRAN MESSAGES 
  
 WARNINGS AND ERRORS (IF ANY) FOR PROBLEM    1
             
 (WARNING  2) NM-TRAN INFERS THAT THE DATA ARE POPULATION.
  
License Registered to: Carolyn Clayton
Expiration Date:    14 AUG 2017
Current Date:       15 DEC 2016
Days until program expires : 244
1NONLINEAR MIXED EFFECTS MODEL PROGRAM (NONMEM) VERSION 7.3.0
 ORIGINALLY DEVELOPED BY STUART BEAL, LEWIS SHEINER, AND ALISON BOECKMANN
 CURRENT DEVELOPERS ARE ROBERT BAUER, ICON DEVELOPMENT SOLUTIONS,
 AND ALISON BOECKMANN. IMPLEMENTATION, EFFICIENCY, AND STANDARDIZATION
 PERFORMED BY NOUS INFOSYSTEMS.

 PROBLEM NO.:         1
 RUN# analysis1
0DATA CHECKOUT RUN:              NO
 DATA SET LOCATED ON UNIT NO.:    2
 THIS UNIT TO BE REWOUND:        NO
 NO. OF DATA RECS IN DATA SET:      335
 NO. OF DATA ITEMS IN DATA SET:  14
 ID DATA ITEM IS DATA ITEM NO.:   2
 DEP VARIABLE IS DATA ITEM NO.:   5
 MDV DATA ITEM IS DATA ITEM NO.: 14
0INDICES PASSED TO SUBROUTINE PRED:
   7   4   6   0   0   0   0   0   0   0   0
0LABELS FOR DATA ITEMS:
 C ID TREAT TIME DV AMT EVID sex race weight height age HC MDV
0FORMAT FOR DATA:
 (E2.0,E5.0,E2.0,2E12.0,E9.0,3E2.0,2E6.0,E3.0,E2.0,1F2.0)

 TOT. NO. OF OBS RECS:      311
 TOT. NO. OF INDIVIDUALS:     12
0LENGTH OF THETA:   3
0DEFAULT THETA BOUNDARY TEST OMITTED:    NO
0OMEGA HAS SIMPLE DIAGONAL FORM WITH DIMENSION:   3
0DEFAULT OMEGA BOUNDARY TEST OMITTED:    NO
0SIGMA HAS SIMPLE DIAGONAL FORM WITH DIMENSION:   2
0DEFAULT SIGMA BOUNDARY TEST OMITTED:    NO
0INITIAL ESTIMATE OF THETA:
 LOWER BOUND    INITIAL EST    UPPER BOUND
  0.0000E+00     0.6400E+02     0.1000E+07
  0.0000E+00     0.2810E+03     0.1000E+07
  0.0000E+00     0.6500E+00     0.1000E+07
0INITIAL ESTIMATE OF OMEGA:
 0.4000E-01
 0.0000E+00   0.4000E-01
 0.0000E+00   0.0000E+00   0.4000E-01
0INITIAL ESTIMATE OF SIGMA:
 0.4000E-01
 0.0000E+00   0.4000E-01
0COVARIANCE STEP OMITTED:        NO
 EIGENVLS. PRINTED:              NO
 SPECIAL COMPUTATION:            NO
 COMPRESSED FORMAT:              NO
 SIGDIGITS ETAHAT (SIGLO):                  -1
 SIGDIGITS GRADIENTS (SIGL):                -1
 RELATIVE TOLERANCE (TOL):                  -1
 ABSOLUTE TOLERANCE-ADVAN 9,13 ONLY (ATOL): -1
 EXCLUDE COV FOR FOCE (NOFCOV):              NO
 RESUME COV ANALYSIS (RESUME):               NO
0TABLES STEP OMITTED:    NO
 NO. OF TABLES:           1
 SEED NUMBER (SEED):    11456
 RANMETHOD:
 MC SAMPLES (ESEED):    300
 WRES SQUARE ROOT TYPE:            EIGENVALUE
0-- TABLE   1 --
 PRINTED:                NO
 HEADER:                YES
 FILE TO BE FORWARDED:   NO
 FORMAT:                S1PE11.4
 LFORMAT:
 RFORMAT:
0USER-CHOSEN ITEMS:
 ID TIME
1DOUBLE PRECISION PREDPP VERSION 7.3.0

 ONE COMPARTMENT MODEL WITH FIRST-ORDER ABSORPTION (ADVAN2)
0MAXIMUM NO. OF BASIC PK PARAMETERS:   3
0BASIC PK PARAMETERS (AFTER TRANSLATION):
   ELIMINATION RATE (K) IS BASIC PK PARAMETER NO.:  1
   ABSORPTION RATE (KA) IS BASIC PK PARAMETER NO.:  3

 TRANSLATOR WILL CONVERT PARAMETERS
 CLEARANCE (CL) AND VOLUME (V) TO K (TRANS2)
0COMPARTMENT ATTRIBUTES
 COMPT. NO.   FUNCTION   INITIAL    ON/OFF      DOSE      DEFAULT    DEFAULT
                         STATUS     ALLOWED    ALLOWED    FOR DOSE   FOR OBS.
    1         DEPOT        OFF        YES        YES        YES        NO
    2         CENTRAL      ON         NO         YES        NO         YES
    3         OUTPUT       OFF        YES        NO         NO         NO
1
 ADDITIONAL PK PARAMETERS - ASSIGNMENT OF ROWS IN GG
 COMPT. NO.                             INDICES
              SCALE      BIOAVAIL.   ZERO-ORDER  ZERO-ORDER  ABSORB
                         FRACTION    RATE        DURATION    LAG
    1            *           *           *           *           *
    2            4           *           *           *           *
    3            *           -           -           -           -
             - PARAMETER IS NOT ALLOWED FOR THIS MODEL
             * PARAMETER IS NOT SUPPLIED BY PK SUBROUTINE;
               WILL DEFAULT TO ONE IF APPLICABLE
0DATA ITEM INDICES USED BY PRED ARE:
   EVENT ID DATA ITEM IS DATA ITEM NO.:      7
   TIME DATA ITEM IS DATA ITEM NO.:          4
   DOSE AMOUNT DATA ITEM IS DATA ITEM NO.:   6

0PK SUBROUTINE CALLED WITH EVERY EVENT RECORD.
 PK SUBROUTINE NOT CALLED AT NONEVENT (ADDITIONAL OR LAGGED) DOSE TIMES.
0ERROR SUBROUTINE CALLED WITH EVERY EVENT RECORD.
1


 #TBLN:      1
 #METH: First Order Conditional Estimation with Interaction

 ESTIMATION STEP OMITTED:                 NO  
 ANALYSIS TYPE:                           POPULATION
 CONDITIONAL ESTIMATES USED:              YES 
 CENTERED ETA:                            NO  
 EPS-ETA INTERACTION:                     YES 
 LAPLACIAN OBJ. FUNC.:                    NO  
 NO. OF FUNCT. EVALS. ALLOWED:            9999
 NO. OF SIG. FIGURES REQUIRED:            3
 INTERMEDIATE PRINTOUT:                   YES 
 ESTIMATE OUTPUT TO MSF:                  YES 
 IND. OBJ. FUNC. VALUES SORTED:           NO  
 NUMERICAL DERIVATIVE 
       FILE REQUEST (NUMDER):             NONE
 MAP (ETAHAT) ESTIMATION METHOD (OPTMAP): 0           
 ETA HESSIAN EVALUATION METHOD (ETADER):  0           
 INITIAL ETA FOR MAP ESTIMATION (MCETA):  0           
 SIGDIGITS FOR MAP ESTIMATION (SIGLO):    100         
 GRADIENT SIGDIGITS OF 
       FIXED EFFECTS PARAMETERS (SIGL):   100         
 EXCLUDE TITLE (NOTITLE):                 NO 
 EXCLUDE COLUMN LABELS (NOLABEL):         NO 
 NOPRIOR SETTING (NOPRIOR):               OFF
 NOCOV SETTING (NOCOV):                   OFF
 DERCONT SETTING (DERCONT):               OFF
 ABSOLUTE TOLERANCE-ADVAN 9,13 ONLY(ATOL):-100        
 FINAL ETA RE-EVALUATION (FNLETA):        ON 
 EXCLUDE NON-INFLUENTIAL (NON-INFL.) ETAS 
       IN SHRINKAGE (ETASTYPE):           NO 
 NON-INFL. ETA CORRECTION (NONINFETA):    OFF
 FORMAT FOR ADDITIONAL FILES (FORMAT):    S1PE12.5
 PARAMETER ORDER FOR OUTPUTS (ORDER):     TSOL
 ADDITIONAL CONVERGENCE TEST (CTYPE=4)?:  NO
 EM OR BAYESIAN METHOD USED:                NONE


 THE FOLLOWING LABELS ARE EQUIVALENT
 PRED=PREDI
 RES=RESI
 WRES=WRESI
 IWRS=IWRESI
 IPRD=IPREDI
 IRS=IRESI

 MONITORING OF SEARCH:


0ITERATION NO.:    0    OBJECTIVE VALUE:   7782.81955740949        NO. OF FUNC. EVALS.:   7
 CUMULATIVE NO. OF FUNC. EVALS.:        7
 NPARAMETR:  6.4000E+01  2.8100E+02  6.5000E-01  4.0000E-02  4.0000E-02  4.0000E-02  4.0000E-02  4.0000E-02
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
 GRADIENT:   1.8146E+02 -4.6066E+00 -4.0081E+02 -2.4045E+02 -1.1689E+02 -3.5114E+02 -7.3162E+03 -1.6239E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:   3519.34163404745        NO. OF FUNC. EVALS.:   8
 CUMULATIVE NO. OF FUNC. EVALS.:       48
 NPARAMETR:  5.1500E+02  6.3308E+02  7.2749E+00  2.4036E+01  8.2236E+00  8.3010E+00  2.0208E+00  4.2731E+01
 PARAMETER:  2.1853E+00  9.1224E-01  2.5152E+00  3.2992E+00  2.7629E+00  2.7676E+00  2.0612E+00  3.5869E+00
 GRADIENT:   5.5366E+00  2.5455E+00  7.2487E+00  2.2517E+01  1.9891E+01  7.1975E+00  1.1280E+02 -7.5090E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:   3447.16038221895        NO. OF FUNC. EVALS.:  10
 CUMULATIVE NO. OF FUNC. EVALS.:       99
 NPARAMETR:  1.0859E+02  5.8693E+02  1.1065E+01  7.3657E-01  3.2540E+01  6.3225E+00  8.8126E-01  1.1708E+02
 PARAMETER:  6.2872E-01  8.3655E-01  2.9346E+00  1.5566E+00  3.4507E+00  2.6315E+00  1.6462E+00  4.0909E+00
 GRADIENT:  -5.5025E+00  3.2493E+00  1.0521E+01  1.2265E+01  2.2447E+01 -9.6309E+00  6.1939E+01  1.7247E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:   3401.72350787108        NO. OF FUNC. EVALS.:   8
 CUMULATIVE NO. OF FUNC. EVALS.:      139
 NPARAMETR:  1.2148E+02  3.5171E+02  1.0362E+01  1.9217E-01  4.8933E-01  4.5951E+00  6.0304E-01  9.0721E+01
 PARAMETER:  7.4087E-01  3.2446E-01  2.8689E+00  8.8476E-01  1.3521E+00  2.4719E+00  1.4566E+00  3.9633E+00
 GRADIENT:   4.8879E+00  1.4389E+01  1.0484E+01 -9.2979E+00  1.1015E+00 -6.1193E+00 -1.6975E+01 -4.7125E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:   3400.27041840487        NO. OF FUNC. EVALS.:   8
 CUMULATIVE NO. OF FUNC. EVALS.:      181
 NPARAMETR:  1.2051E+02  3.3462E+02  8.8474E+00  1.6100E-01  4.1309E-01  6.1959E+00  6.7291E-01  9.2851E+01
 PARAMETER:  7.3287E-01  2.7464E-01  2.7109E+00  7.9627E-01  1.2674E+00  2.6214E+00  1.5114E+00  3.9749E+00
 GRADIENT:   3.3583E-01  1.3073E+01  7.3964E+00 -1.3823E+01 -2.1371E-01  2.3020E+00  8.3809E+00  1.2676E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:   3394.24460131729        NO. OF FUNC. EVALS.:   8
 CUMULATIVE NO. OF FUNC. EVALS.:      226
 NPARAMETR:  1.2593E+02  4.0233E+02  1.0859E+00  1.2017E-01  4.3096E-01  1.1046E+00  7.9458E-01  1.1871E+02
 PARAMETER:  7.7681E-01  4.5892E-01  6.1315E-01  6.5001E-01  1.2886E+00  1.7592E+00  1.5945E+00  4.0978E+00
 GRADIENT:  -4.3074E+00  2.0143E+01 -1.3942E+00 -2.6499E+01 -1.6753E+00  5.9168E+00  3.3814E+01  2.1644E+01

0ITERATION NO.:   30    OBJECTIVE VALUE:   3388.45367751372        NO. OF FUNC. EVALS.:  10
 CUMULATIVE NO. OF FUNC. EVALS.:      270
 NPARAMETR:  1.2162E+02  4.0286E+02  1.3380E+00  1.5604E-01  5.3599E-01  9.5094E-01  6.4135E-01  8.2972E+01
 PARAMETER:  7.4201E-01  4.6024E-01  8.2196E-01  7.8062E-01  1.3976E+00  1.6843E+00  1.4873E+00  3.9187E+00
 GRADIENT:   1.2606E+00  1.7735E+01  2.3016E+00 -1.7694E+01  1.2318E+00  3.3154E+00 -4.7433E+00 -9.5453E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:   3380.12805939866        NO. OF FUNC. EVALS.:   8
 CUMULATIVE NO. OF FUNC. EVALS.:      314
 NPARAMETR:  1.1759E+02  2.4868E+02  1.1157E+00  2.8252E-01  3.3496E-01  6.6924E-01  6.1829E-01  9.6834E+01
 PARAMETER:  7.0828E-01 -2.2190E-02  6.4030E-01  1.0774E+00  1.1626E+00  1.5086E+00  1.4690E+00  3.9959E+00
 GRADIENT:   3.0214E-01  6.6273E-03  1.1912E+00 -4.0078E-01 -2.2079E-01 -2.4739E-01  6.6584E-01  5.5541E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:   3380.09697721819        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:      372
 NPARAMETR:  1.1979E+02  2.5017E+02  1.0870E+00  2.8727E-01  3.4602E-01  6.7643E-01  6.2112E-01  9.6554E+01
 PARAMETER:  7.2685E-01 -1.6199E-02  6.1424E-01  1.0858E+00  1.1788E+00  1.5140E+00  1.4713E+00  3.9945E+00
 GRADIENT:  -5.1417E-02 -4.1252E-02  1.2927E-02 -2.6859E-02  6.4715E-03 -9.2347E-03  1.4433E-01  3.3341E-02

0ITERATION NO.:   43    OBJECTIVE VALUE:   3380.09691808739        NO. OF FUNC. EVALS.:  10
 CUMULATIVE NO. OF FUNC. EVALS.:      408
 NPARAMETR:  1.1986E+02  2.5030E+02  1.0866E+00  2.8764E-01  3.4597E-01  6.7694E-01  6.2085E-01  9.6520E+01
 PARAMETER:  7.2743E-01 -1.5694E-02  6.1382E-01  1.0864E+00  1.1787E+00  1.5144E+00  1.4711E+00  3.9943E+00
 GRADIENT:   8.0472E-04 -1.3841E-03 -2.6869E-04 -6.2761E-04  6.1268E-04  6.0303E-05 -7.8622E-05 -1.3542E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      408
 NO. OF SIG. DIGITS IN FINAL EST.:  3.7

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -8.2183E-03  2.9899E-02  3.5445E-02
 SE:             1.5076E-01  1.4505E-01  1.7249E-01
 N:                      12          12          12

 P VAL.:         9.5653E-01  8.3669E-01  8.3719E-01

 ETAshrink(%):   1.0000E-10  1.0775E+01  2.4148E+01
 EBVshrink(%):   2.4567E+00  1.3924E+01  1.8931E+01
 EPSshrink(%):   2.4551E+00  2.4551E+00

 #TERE:
 Elapsed estimation time in seconds:     6.64
 Elapsed covariance time in seconds:     2.12
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************     3380.097       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3     
 
         1.20E+02  2.50E+02  1.09E+00
 


 OMEGA - COV MATRIX FOR RANDOM EFFECTS - ETAS  ********


            ETA1      ETA2      ETA3   
 
 ETA1
+        2.88E-01
 
 ETA2
+        0.00E+00  3.46E-01
 
 ETA3
+        0.00E+00  0.00E+00  6.77E-01
 


 SIGMA - COV MATRIX FOR RANDOM EFFECTS - EPSILONS  ****


            EPS1      EPS2   
 
 EPS1
+        6.21E-01
 
 EPS2
+        0.00E+00  9.65E+01
 
1


 OMEGA - CORR MATRIX FOR RANDOM EFFECTS - ETAS  *******


            ETA1      ETA2      ETA3   
 
 ETA1
+        5.36E-01
 
 ETA2
+        0.00E+00  5.88E-01
 
 ETA3
+        0.00E+00  0.00E+00  8.23E-01
 


 SIGMA - CORR MATRIX FOR RANDOM EFFECTS - EPSILONS  ***


            EPS1      EPS2   
 
 EPS1
+        7.88E-01
 
 EPS2
+        0.00E+00  9.82E+00
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                            STANDARD ERROR OF ESTIMATE                          ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3     
 
         1.75E+01  2.98E+01  2.16E-01
 


 OMEGA - COV MATRIX FOR RANDOM EFFECTS - ETAS  ********


            ETA1      ETA2      ETA3   
 
 ETA1
+        1.03E-01
 
 ETA2
+       .........  1.73E-01
 
 ETA3
+       ......... .........  4.89E-01
 


 SIGMA - COV MATRIX FOR RANDOM EFFECTS - EPSILONS  ****


            EPS1      EPS2   
 
 EPS1
+        9.29E-02
 
 EPS2
+       .........  2.58E+01
 
1


 OMEGA - CORR MATRIX FOR RANDOM EFFECTS - ETAS  *******


            ETA1      ETA2      ETA3   
 
 ETA1
+        9.58E-02
 
 ETA2
+       .........  1.47E-01
 
 ETA3
+       ......... .........  2.97E-01
 


 SIGMA - CORR MATRIX FOR RANDOM EFFECTS - EPSILONS  ***


            EPS1      EPS2   
 
 EPS1
+        5.90E-02
 
 EPS2
+       .........  1.31E+00
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                          COVARIANCE MATRIX OF ESTIMATE                         ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      OM11      OM12      OM13      OM22      OM23      OM33      SG11      SG12      SG22  

 
 TH 1
+        3.07E+02
 
 TH 2
+        4.39E+02  8.89E+02
 
 TH 3
+        8.60E-01  1.11E+00  4.67E-02
 
 OM11
+       -3.87E-01 -1.82E+00 -2.71E-04  1.06E-02
 
 OM12
+       ......... ......... ......... ......... .........
 
 OM13
+       ......... ......... ......... ......... ......... .........
 
 OM22
+       -8.85E-01 -2.97E+00 -1.78E-03  1.56E-02 ......... .........  2.98E-02
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... .........
 
 OM33
+        3.93E+00  3.82E+00  6.82E-02  1.44E-02 ......... .........  3.68E-02 .........  2.39E-01
 
 SG11
+       -7.33E-01 -1.18E+00 -1.29E-02  4.20E-03 ......... .........  9.67E-03 ......... -7.63E-03  8.64E-03
 
 SG12
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 SG22
+       -9.23E+01  8.98E+01  1.79E+00 -9.06E-01 ......... ......... -1.57E+00 ......... -2.66E+00 -4.90E-01 .........  6.66E+02
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                          CORRELATION MATRIX OF ESTIMATE                        ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      OM11      OM12      OM13      OM22      OM23      OM33      SG11      SG12      SG22  

 
 TH 1
+        1.75E+01
 
 TH 2
+        8.40E-01  2.98E+01
 
 TH 3
+        2.27E-01  1.72E-01  2.16E-01
 
 OM11
+       -2.15E-01 -5.94E-01 -1.22E-02  1.03E-01
 
 OM12
+       ......... ......... ......... ......... .........
 
 OM13
+       ......... ......... ......... ......... ......... .........
 
 OM22
+       -2.93E-01 -5.78E-01 -4.77E-02  8.82E-01 ......... .........  1.73E-01
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... .........
 
 OM33
+        4.59E-01  2.62E-01  6.45E-01  2.87E-01 ......... .........  4.36E-01 .........  4.89E-01
 
 SG11
+       -4.50E-01 -4.26E-01 -6.43E-01  4.40E-01 ......... .........  6.03E-01 ......... -1.68E-01  9.29E-02
 
 SG12
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 SG22
+       -2.04E-01  1.17E-01  3.21E-01 -3.42E-01 ......... ......... -3.53E-01 ......... -2.11E-01 -2.04E-01 .........  2.58E+01
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                      INVERSE COVARIANCE MATRIX OF ESTIMATE                     ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      OM11      OM12      OM13      OM22      OM23      OM33      SG11      SG12      SG22  

 
 TH 1
+        4.21E-02
 
 TH 2
+       -1.99E-02  2.29E-02
 
 TH 3
+        1.16E+00  1.33E+00  4.42E+02
 
 OM11
+       -4.11E+00 -4.71E-02 -4.60E+02  1.33E+03
 
 OM12
+       ......... ......... ......... ......... .........
 
 OM13
+       ......... ......... ......... ......... ......... .........
 
 OM22
+        1.56E+00  3.10E+00  5.85E+02 -1.16E+03 ......... .........  1.57E+03
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... .........
 
 OM33
+       -5.84E-01 -1.02E+00 -2.35E+02  3.06E+02 ......... ......... -4.39E+02 .........  1.53E+02
 
 SG11
+        2.49E+00 -1.32E+00  2.33E+02 -7.08E+01 ......... ......... -2.39E+02 ......... -2.44E+01  7.59E+02
 
 SG12
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 SG22
+        3.00E-03 -7.20E-03 -1.22E+00  9.15E-01 ......... ......... -1.57E+00 .........  6.58E-01 -3.07E-01 .........  6.09E-03
 
 #CPUT: Total CPU Time in Seconds,        8.391
Stop Time: 
Thu 12/15/2016 
08:37 PM
