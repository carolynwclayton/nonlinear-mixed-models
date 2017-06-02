Sun 01/15/2017 
04:43 PM
;Model Desc: basic two cmt random ka vc cl q
;Project Name: raltest
;Project ID: NO PROJECT DESCRIPTION

;Project ID: NO PROJECT DESCRIPTION
 
$PROB RUN# analysis5
$INPUT C ID TREAT TIME DV AMT EVID sex race weight height age HC
$DATA RAL_FOR_NONMEM.CSV IGNORE=C
$SUBROUTINES ADVAN4 TRANS4
$PK
   TVCL=THETA(1)
   CL=TVCL*EXP(ETA(1))
   TVV2=THETA(2)
   V2=TVV2*EXP(ETA(2))
   TVQ=THETA(3)
   Q=TVQ*EXP(ETA(3))
   TVV3=THETA(4)
   V3=TVV3*EXP(ETA(4))
   TVKA=THETA(5)
   KA=TVKA
   S2=V2
 
$ERROR
   Y = F + F*ERR(1)+ERR(2)
 IPRE=F
 
$EST METHOD=1 INTERACTION PRINT=5 MAX=9999 SIG=3    MSFO=analysis5.msf 
$THETA 
  (0, 64);[CL]
  (0, 138);[V2]
  (0, 9.3);[Q]
  (0, 143);[V3]
  (0, 0.65);[KA]
$OMEGA
  0.04 ;[P] omega(1,1)
  0.04 ;[P] omega(2,2)
  0.04 ;[P] omega(3,3)
  0.04 ;[P] omega(4,4)
$SIGMA
  0.04 ;[P] sigma(1,1)
  0.04 ;[A] sigma(2,2)
$COV
$TABLE ID TIME ONEHEADER NOPRINT FILE=analysis5.tab

  
NM-TRAN MESSAGES 
  
 WARNINGS AND ERRORS (IF ANY) FOR PROBLEM    1
             
 (WARNING  2) NM-TRAN INFERS THAT THE DATA ARE POPULATION.
  
License Registered to: Carolyn Clayton
Expiration Date:    14 AUG 2017
Current Date:       15 JAN 2017
Days until program expires : 209
1NONLINEAR MIXED EFFECTS MODEL PROGRAM (NONMEM) VERSION 7.3.0
 ORIGINALLY DEVELOPED BY STUART BEAL, LEWIS SHEINER, AND ALISON BOECKMANN
 CURRENT DEVELOPERS ARE ROBERT BAUER, ICON DEVELOPMENT SOLUTIONS,
 AND ALISON BOECKMANN. IMPLEMENTATION, EFFICIENCY, AND STANDARDIZATION
 PERFORMED BY NOUS INFOSYSTEMS.

 PROBLEM NO.:         1
 RUN# analysis5
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
0LENGTH OF THETA:   5
0DEFAULT THETA BOUNDARY TEST OMITTED:    NO
0OMEGA HAS SIMPLE DIAGONAL FORM WITH DIMENSION:   4
0DEFAULT OMEGA BOUNDARY TEST OMITTED:    NO
0SIGMA HAS SIMPLE DIAGONAL FORM WITH DIMENSION:   2
0DEFAULT SIGMA BOUNDARY TEST OMITTED:    NO
0INITIAL ESTIMATE OF THETA:
 LOWER BOUND    INITIAL EST    UPPER BOUND
  0.0000E+00     0.6400E+02     0.1000E+07
  0.0000E+00     0.1380E+03     0.1000E+07
  0.0000E+00     0.9300E+01     0.1000E+07
  0.0000E+00     0.1430E+03     0.1000E+07
  0.0000E+00     0.6500E+00     0.1000E+07
0INITIAL ESTIMATE OF OMEGA:
 0.4000E-01
 0.0000E+00   0.4000E-01
 0.0000E+00   0.0000E+00   0.4000E-01
 0.0000E+00   0.0000E+00   0.0000E+00   0.4000E-01
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

 TWO COMPARTMENT MODEL WITH FIRST-ORDER ABSORPTION (ADVAN4)
0MAXIMUM NO. OF BASIC PK PARAMETERS:   5
0BASIC PK PARAMETERS (AFTER TRANSLATION):
   BASIC PK PARAMETER NO.  1: ELIMINATION RATE (K)
   BASIC PK PARAMETER NO.  2: CENTRAL-TO-PERIPH. RATE (K23)
   BASIC PK PARAMETER NO.  3: PERIPH.-TO-CENTRAL RATE (K32)
   BASIC PK PARAMETER NO.  5: ABSORPTION RATE (KA)
 TRANSLATOR WILL CONVERT PARAMETERS
 CL, V2, Q, V3 TO K, K23, K32 (TRANS4)
0COMPARTMENT ATTRIBUTES
 COMPT. NO.   FUNCTION   INITIAL    ON/OFF      DOSE      DEFAULT    DEFAULT
                         STATUS     ALLOWED    ALLOWED    FOR DOSE   FOR OBS.
    1         DEPOT        OFF        YES        YES        YES        NO
    2         CENTRAL      ON         NO         YES        NO         YES
    3         PERIPH.      ON         NO         YES        NO         NO
    4         OUTPUT       OFF        YES        NO         NO         NO
1
 ADDITIONAL PK PARAMETERS - ASSIGNMENT OF ROWS IN GG
 COMPT. NO.                             INDICES
              SCALE      BIOAVAIL.   ZERO-ORDER  ZERO-ORDER  ABSORB
                         FRACTION    RATE        DURATION    LAG
    1            *           *           *           *           *
    2            6           *           *           *           *
    3            *           *           *           *           *
    4            *           -           -           -           -
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   5389.75006179456        NO. OF FUNC. EVALS.:   9
 CUMULATIVE NO. OF FUNC. EVALS.:        9
 NPARAMETR:  6.4000E+01  1.3800E+02  9.3000E+00  1.4300E+02  6.5000E-01  4.0000E-02  4.0000E-02  4.0000E-02  4.0000E-02  4.0000E-02
             4.0000E-02
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:  -4.1821E+01  2.3278E+02  4.8593E+01 -1.8340E+02 -2.6922E+02 -1.1836E+02 -1.4766E+02 -1.9965E+02 -1.0942E+02 -4.8127E+03
            -3.0988E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:   3499.97861659225        NO. OF FUNC. EVALS.:  10
 CUMULATIVE NO. OF FUNC. EVALS.:       59
 NPARAMETR:  2.6076E+02  1.9743E+02  1.9792E+01  4.9990E+02  3.6868E-01  2.5415E-01  2.0191E-01  8.9778E-02  1.0298E-01  1.1639E+01
             4.4563E-02
 PARAMETER:  1.5047E+00  4.5815E-01  8.5527E-01  1.3516E+00 -4.6705E-01  1.0245E+00  9.0948E-01  5.0423E-01  5.7281E-01  2.9366E+00
             1.5402E-01
 GRADIENT:  -6.3452E+00  3.1195E+00 -2.1912E+01 -3.6248E+01 -1.4692E+02  4.1482E+00 -4.0294E-01 -1.1046E+01 -5.8489E+00  1.5720E+02
            -8.2700E-01

0ITERATION NO.:   10    OBJECTIVE VALUE:   3372.83038793378        NO. OF FUNC. EVALS.:  14
 CUMULATIVE NO. OF FUNC. EVALS.:      113
 NPARAMETR:  6.0605E+01  6.7040E+00  1.5027E+01  1.1031E+03  3.7354E-01  1.4340E-01  6.7375E+00  4.8198E-02  2.5947E-05  1.0159E+00
             2.6389E-01
 PARAMETER:  4.5490E-02 -2.9245E+00  5.7984E-01  2.1430E+00 -4.5395E-01  7.3838E-01  2.6633E+00  1.9322E-01 -3.5703E+00  1.7173E+00
             1.0433E+00
 GRADIENT:  -8.2830E+01 -4.4798E-01  1.7843E+01 -1.1009E+01 -1.5563E+02 -5.4567E+01  2.5090E-01 -1.6653E+01 -1.3183E-03  1.1601E+02
             1.3397E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:   3293.31439169779        NO. OF FUNC. EVALS.:  10
 CUMULATIVE NO. OF FUNC. EVALS.:      163
 NPARAMETR:  9.8445E+01  2.5240E+01  1.1026E+01  5.2382E+02  4.8358E-01  2.3859E-01  3.4856E+00  4.0158E-01  2.7455E-02  6.2372E-01
             2.4240E-02
 PARAMETER:  5.3061E-01 -1.5988E+00  2.7028E-01  1.3983E+00 -1.9576E-01  9.9294E-01  2.3338E+00  1.2533E+00 -8.8157E-02  1.4734E+00
            -1.5044E-01
 GRADIENT:  -3.5759E+00 -7.0377E+00 -8.8212E+00 -9.8508E-01  1.5303E+01 -4.1090E+00  5.0566E+00 -1.3014E+00  2.7719E-01  2.1026E+01
             1.2848E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:   3277.19682773740        NO. OF FUNC. EVALS.:  10
 CUMULATIVE NO. OF FUNC. EVALS.:      213
 NPARAMETR:  1.2130E+02  9.6285E+01  1.3830E+01  6.6428E+02  4.8140E-01  4.2068E-01  3.0517E-01  4.6724E-01  4.2233E-02  5.9145E-01
             1.1999E-02
 PARAMETER:  7.3936E-01 -2.5994E-01  4.9683E-01  1.6359E+00 -2.0027E-01  1.2765E+00  1.1160E+00  1.3290E+00  1.2716E-01  1.4469E+00
            -5.0204E-01
 GRADIENT:   1.0370E+01 -3.2494E+00 -1.9630E+00  1.0138E+00  7.6956E+00  5.5906E+00 -1.1399E+00  8.3073E-01  9.4631E-01 -6.5930E+00
             5.6395E-02

0ITERATION NO.:   25    OBJECTIVE VALUE:   3275.30969600234        NO. OF FUNC. EVALS.:  10
 CUMULATIVE NO. OF FUNC. EVALS.:      263
 NPARAMETR:  1.0258E+02  1.0036E+02  1.4569E+01  6.8110E+02  4.7752E-01  2.8035E-01  3.1766E-01  4.3810E-01  1.2113E-02  6.0727E-01
             7.6567E-03
 PARAMETER:  5.7174E-01 -2.1853E-01  5.4888E-01  1.6609E+00 -2.0838E-01  1.0736E+00  1.1361E+00  1.2968E+00 -4.9730E-01  1.4600E+00
            -7.2665E-01
 GRADIENT:  -4.1810E-01 -1.4727E-01  1.4522E-01  9.0098E-01 -1.9191E+00 -9.6271E-01  8.9634E-02  1.6900E-01  3.1392E-01  2.5094E+00
             4.2848E-02

0ITERATION NO.:   30    OBJECTIVE VALUE:   3275.10871744910        NO. OF FUNC. EVALS.:  11
 CUMULATIVE NO. OF FUNC. EVALS.:      316
 NPARAMETR:  1.0256E+02  1.0112E+02  1.4425E+01  6.6426E+02  4.8044E-01  2.9042E-01  3.1592E-01  4.3776E-01  6.1317E-04  6.0066E-01
             7.0232E-04
 PARAMETER:  5.7159E-01 -2.1098E-01  5.3891E-01  1.6358E+00 -2.0227E-01  1.0912E+00  1.1333E+00  1.2964E+00 -1.9890E+00  1.4546E+00
            -1.9211E+00
 GRADIENT:  -1.2051E-01 -7.7873E-03  2.5000E-02  3.4541E-02  9.4597E-02 -7.5882E-02 -2.3096E-03  1.1420E-02  1.7132E-02  7.6503E-02
             3.9999E-03

0ITERATION NO.:   35    OBJECTIVE VALUE:   3275.09682884203        NO. OF FUNC. EVALS.:  10
 CUMULATIVE NO. OF FUNC. EVALS.:      367
 NPARAMETR:  1.0271E+02  1.0111E+02  1.4413E+01  6.6379E+02  4.8037E-01  2.9137E-01  3.1611E-01  4.3744E-01  4.0758E-06  6.0055E-01
             1.4131E-05
 PARAMETER:  5.7298E-01 -2.1108E-01  5.3812E-01  1.6351E+00 -2.0242E-01  1.0929E+00  1.1336E+00  1.2960E+00 -4.4958E+00  1.4545E+00
            -3.8741E+00
 GRADIENT:  -5.4552E-04  3.0984E-04 -2.6687E-03  9.6202E-04  3.2751E-03  1.8820E-03 -9.1065E-04 -2.7382E-03  1.1426E-04 -1.0648E-02
             8.0738E-05

0ITERATION NO.:   40    OBJECTIVE VALUE:   3275.08417235604        NO. OF FUNC. EVALS.:  17
 CUMULATIVE NO. OF FUNC. EVALS.:      442
 NPARAMETR:  1.0445E+02  1.0162E+02  1.4532E+01  6.6803E+02  4.8056E-01  2.9131E-01  3.1635E-01  4.3773E-01  4.0000E-06  6.0438E-01
             4.0000E-06
 PARAMETER:  5.8978E-01 -2.0606E-01  5.4637E-01  1.6415E+00 -2.0203E-01  1.0928E+00  1.1340E+00  1.2964E+00 -5.5509E+00  1.4577E+00
            -4.6961E+00
 GRADIENT:   1.0298E-02 -1.3933E-02 -1.6775E-02  2.3575E-03  6.1105E-02 -1.8020E-03 -1.0930E-03 -8.3330E-03  0.0000E+00 -3.3823E-03
             0.0000E+00

0ITERATION NO.:   44    OBJECTIVE VALUE:   3275.08416517472        NO. OF FUNC. EVALS.:  14
 CUMULATIVE NO. OF FUNC. EVALS.:      515
 NPARAMETR:  1.0444E+02  1.0163E+02  1.4537E+01  6.6815E+02  4.8054E-01  2.9135E-01  3.1638E-01  4.3788E-01  4.0000E-06  6.0442E-01
             4.0000E-06
 PARAMETER:  5.8969E-01 -2.0595E-01  5.4668E-01  1.6417E+00 -2.0207E-01  1.0928E+00  1.1340E+00  1.2965E+00 -5.5509E+00  1.4577E+00
            -4.6961E+00
 GRADIENT:   7.3070E-04 -6.3478E-03 -4.8089E-03  1.9252E-03  2.4277E-02 -4.8320E-04 -6.7327E-05 -1.5775E-03  0.0000E+00  4.8645E-03
             0.0000E+00

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      515
 NO. OF SIG. DIGITS IN FINAL EST.:  3.4
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -7.0943E-04  3.2443E-02 -1.5094E-02  4.9365E-07
 SE:             1.5297E-01  1.3793E-01  1.8093E-01  1.2244E-06
 N:                      12          12          12          12

 P VAL.:         9.9630E-01  8.1404E-01  9.3352E-01  6.8681E-01

 ETAshrink(%):   1.0000E-10  1.1279E+01  1.0717E+00  9.9779E+01
 EBVshrink(%):   1.9798E+00  1.4553E+01  6.1500E+00  9.9700E+01
 EPSshrink(%):   2.4625E+00  2.4625E+00

 #TERE:
 Elapsed estimation time in seconds:     4.64
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************     3275.084       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5     
 
         1.04E+02  1.02E+02  1.45E+01  6.68E+02  4.81E-01
 


 OMEGA - COV MATRIX FOR RANDOM EFFECTS - ETAS  ********


            ETA1      ETA2      ETA3      ETA4   
 
 ETA1
+        2.91E-01
 
 ETA2
+        0.00E+00  3.16E-01
 
 ETA3
+        0.00E+00  0.00E+00  4.38E-01
 
 ETA4
+        0.00E+00  0.00E+00  0.00E+00  4.00E-06
 


 SIGMA - COV MATRIX FOR RANDOM EFFECTS - EPSILONS  ****


            EPS1      EPS2   
 
 EPS1
+        6.04E-01
 
 EPS2
+        0.00E+00  4.00E-06
 
1


 OMEGA - CORR MATRIX FOR RANDOM EFFECTS - ETAS  *******


            ETA1      ETA2      ETA3      ETA4   
 
 ETA1
+        5.40E-01
 
 ETA2
+        0.00E+00  5.62E-01
 
 ETA3
+        0.00E+00  0.00E+00  6.62E-01
 
 ETA4
+        0.00E+00  0.00E+00  0.00E+00  2.00E-03
 


 SIGMA - CORR MATRIX FOR RANDOM EFFECTS - EPSILONS  ***


            EPS1      EPS2   
 
 EPS1
+        7.77E-01
 
 EPS2
+        0.00E+00  2.00E-03
 
 #CPUT: Total CPU Time in Seconds,        4.328
Stop Time: 
Sun 01/15/2017 
04:43 PM