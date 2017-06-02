Sun 01/15/2017 
04:43 PM
;Model Desc: basic two cmt random ka vc cl q
;Project Name: raltest
;Project ID: NO PROJECT DESCRIPTION

;Project ID: NO PROJECT DESCRIPTION
 
$PROB RUN# analysis9
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
   V3=TVV3
   TVKA=THETA(5)
   KA=TVKA*EXP(ETA(4))
   S2=V2
 
$ERROR
   Y = F + F*ERR(1)
 IPRE=F
 
$EST METHOD=1 INTERACTION PRINT=5 MAX=9999 SIG=3    MSFO=analysis9.msf 
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
$COV
$TABLE ID TIME ONEHEADER NOPRINT FILE=analysis9.tab

  
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
 RUN# analysis9
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
0SIGMA HAS SIMPLE DIAGONAL FORM WITH DIMENSION:   1
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   5521.19006008739        NO. OF FUNC. EVALS.:   8
 CUMULATIVE NO. OF FUNC. EVALS.:        8
 NPARAMETR:  6.4000E+01  1.3800E+02  9.3000E+00  1.4300E+02  6.5000E-01  4.0000E-02  4.0000E-02  4.0000E-02  4.0000E-02  4.0000E-02

 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01

 GRADIENT:   2.0599E+01  2.1209E+02  1.5890E+02 -4.5756E+02 -1.1831E+02 -9.6051E+01 -1.1403E+02 -1.6904E+02 -4.3050E+01 -5.1800E+03


0ITERATION NO.:    5    OBJECTIVE VALUE:   3495.72688458046        NO. OF FUNC. EVALS.:   9
 CUMULATIVE NO. OF FUNC. EVALS.:       56
 NPARAMETR:  1.9292E+02  1.0957E+02  1.8061E+01  7.3692E+02  3.6417E-01  1.2856E-01  7.8654E-02  7.9391E-02  6.8115E-02  9.9622E+00

 PARAMETER:  1.2034E+00 -1.3068E-01  7.6373E-01  1.7396E+00 -4.7936E-01  6.8375E-01  4.3809E-01  4.4275E-01  3.6616E-01  2.8588E+00

 GRADIENT:  -4.2579E+01 -1.7648E+01 -3.2625E+01 -3.3487E+00 -4.2647E+01 -2.1640E+01 -1.1797E+00 -1.2565E+01  5.2045E+00  1.9441E+02


0ITERATION NO.:   10    OBJECTIVE VALUE:   3386.94974343158        NO. OF FUNC. EVALS.:   9
 CUMULATIVE NO. OF FUNC. EVALS.:      106
 NPARAMETR:  8.6613E+01  1.8425E+01  2.9510E+01  1.0882E+03  3.1747E-01  3.3869E-01  9.0156E+00  1.0701E+00  2.9285E-02  1.7460E+00

 PARAMETER:  4.0256E-01 -1.9135E+00  1.2547E+00  2.1294E+00 -6.1658E-01  1.1681E+00  2.8089E+00  1.7433E+00 -5.5899E-02  1.9881E+00

 GRADIENT:  -3.5082E+01 -2.6059E+00  9.4122E+00 -1.2618E+00 -1.3754E+02 -1.4665E+01  1.1287E+01  1.0492E+01 -1.9756E+01  1.5299E+02


0ITERATION NO.:   15    OBJECTIVE VALUE:   3304.04217550341        NO. OF FUNC. EVALS.:   9
 CUMULATIVE NO. OF FUNC. EVALS.:      153
 NPARAMETR:  1.0301E+02  1.1031E+02  1.5066E+01  8.4577E+02  3.2310E-01  4.2623E-01  3.9406E-02  4.0736E-01  9.5740E-02  7.1965E-01

 PARAMETER:  5.7592E-01 -1.2397E-01  5.8244E-01  1.8774E+00 -5.9902E-01  1.2831E+00  9.2523E-02  1.2604E+00  5.3638E-01  1.5449E+00

 GRADIENT:  -3.2421E+00  2.1716E+01 -4.9524E+00  7.2182E+00 -8.5495E+01  7.0466E+00 -6.3637E+00 -3.3211E+00 -2.0074E+01  2.9049E+01


0ITERATION NO.:   20    OBJECTIVE VALUE:   3273.65815711732        NO. OF FUNC. EVALS.:   9
 CUMULATIVE NO. OF FUNC. EVALS.:      198
 NPARAMETR:  9.9864E+01  1.0440E+02  1.5774E+01  5.9609E+02  5.0196E-01  4.1356E-01  2.0284E-01  5.3481E-01  6.9057E-02  5.7087E-01

 PARAMETER:  5.4493E-01 -1.7904E-01  6.2832E-01  1.5276E+00 -1.5845E-01  1.2680E+00  9.1178E-01  1.3965E+00  3.7303E-01  1.4291E+00

 GRADIENT:  -6.8745E-01 -2.7234E+00  4.0709E+00 -7.7101E+00 -1.0973E+01  6.7853E+00 -3.2898E+00  1.0722E+00  5.5059E+00 -3.1504E-01


0ITERATION NO.:   25    OBJECTIVE VALUE:   3270.92276036658        NO. OF FUNC. EVALS.:  11
 CUMULATIVE NO. OF FUNC. EVALS.:      245
 NPARAMETR:  1.0162E+02  1.0816E+02  1.4808E+01  6.5463E+02  5.1497E-01  2.9035E-01  2.5290E-01  4.9413E-01  3.0986E-02  5.8068E-01

 PARAMETER:  5.6232E-01 -1.4365E-01  5.6518E-01  1.6212E+00 -1.3287E-01  1.0911E+00  1.0221E+00  1.3570E+00 -2.7676E-02  1.4377E+00

 GRADIENT:  -5.4720E-01  3.2482E-01 -1.8136E-01  1.0870E-02  6.7183E-01 -4.6742E-01 -4.5961E-01 -1.1695E-01  4.5576E-01  7.9096E-01


0ITERATION NO.:   30    OBJECTIVE VALUE:   3270.88562810064        NO. OF FUNC. EVALS.:  10
 CUMULATIVE NO. OF FUNC. EVALS.:      291
 NPARAMETR:  1.0231E+02  1.0668E+02  1.4824E+01  6.5700E+02  5.1108E-01  2.9668E-01  2.6793E-01  4.9718E-01  2.7678E-02  5.7988E-01

 PARAMETER:  5.6912E-01 -1.5742E-01  5.6622E-01  1.6248E+00 -1.4044E-01  1.1019E+00  1.0509E+00  1.3600E+00 -8.4125E-02  1.4370E+00

 GRADIENT:   3.0071E-02  6.3220E-02 -9.7054E-02  4.9695E-02  8.3393E-02 -3.7081E-02 -2.0058E-02  1.2559E-01  1.5645E-02 -5.6622E-02


0ITERATION NO.:   35    OBJECTIVE VALUE:   3270.88505296243        NO. OF FUNC. EVALS.:  16
 CUMULATIVE NO. OF FUNC. EVALS.:      347
 NPARAMETR:  1.0233E+02  1.0633E+02  1.4846E+01  6.5654E+02  5.1064E-01  2.9737E-01  2.6859E-01  4.9182E-01  2.7403E-02  5.8012E-01

 PARAMETER:  5.6929E-01 -1.6068E-01  5.6773E-01  1.6241E+00 -1.4131E-01  1.1031E+00  1.0522E+00  1.3546E+00 -8.9121E-02  1.4372E+00

 GRADIENT:  -1.1814E+00 -1.2392E-01 -2.0697E-01 -2.0426E-01 -1.0942E-01  2.3211E-02 -1.8425E-02 -7.1639E-02 -4.4998E-03 -8.4476E-01


0ITERATION NO.:   40    OBJECTIVE VALUE:   3270.87102639451        NO. OF FUNC. EVALS.:  12
 CUMULATIVE NO. OF FUNC. EVALS.:      421
 NPARAMETR:  1.0412E+02  1.0701E+02  1.5001E+01  6.6174E+02  5.1084E-01  2.9724E-01  2.6920E-01  4.9447E-01  2.7549E-02  5.8379E-01

 PARAMETER:  5.8670E-01 -1.5437E-01  5.7807E-01  1.6320E+00 -1.4091E-01  1.1028E+00  1.0533E+00  1.3573E+00 -8.6454E-02  1.4403E+00

 GRADIENT:   7.2768E-04 -2.2818E-04  5.9380E-04 -8.1820E-04  7.7803E-04 -1.4302E-04 -2.7903E-04  3.1672E-04  2.7949E-04 -6.5775E-04


 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      421
 NO. OF SIG. DIGITS IN FINAL EST.:  3.5

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -5.3457E-03  2.2674E-02 -1.6137E-02  1.3849E-02
 SE:             1.5409E-01  1.1666E-01  1.9451E-01  2.9455E-02
 N:                      12          12          12          12

 P VAL.:         9.7233E-01  8.4590E-01  9.3388E-01  6.3821E-01

 ETAshrink(%):   1.0000E-10  1.8644E+01  1.0000E-10  3.5793E+01
 EBVshrink(%):   1.9928E+00  2.0854E+01  5.1721E+00  4.0059E+01
 EPSshrink(%):   2.7375E+00

 #TERE:
 Elapsed estimation time in seconds:     4.25
 Elapsed covariance time in seconds:     2.48
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************     3270.871       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5     
 
         1.04E+02  1.07E+02  1.50E+01  6.62E+02  5.11E-01
 


 OMEGA - COV MATRIX FOR RANDOM EFFECTS - ETAS  ********


            ETA1      ETA2      ETA3      ETA4   
 
 ETA1
+        2.97E-01
 
 ETA2
+        0.00E+00  2.69E-01
 
 ETA3
+        0.00E+00  0.00E+00  4.94E-01
 
 ETA4
+        0.00E+00  0.00E+00  0.00E+00  2.75E-02
 


 SIGMA - COV MATRIX FOR RANDOM EFFECTS - EPSILONS  ****


            EPS1   
 
 EPS1
+        5.84E-01
 
1


 OMEGA - CORR MATRIX FOR RANDOM EFFECTS - ETAS  *******


            ETA1      ETA2      ETA3      ETA4   
 
 ETA1
+        5.45E-01
 
 ETA2
+        0.00E+00  5.19E-01
 
 ETA3
+        0.00E+00  0.00E+00  7.03E-01
 
 ETA4
+        0.00E+00  0.00E+00  0.00E+00  1.66E-01
 


 SIGMA - CORR MATRIX FOR RANDOM EFFECTS - EPSILONS  ***


            EPS1   
 
 EPS1
+        7.64E-01
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                            STANDARD ERROR OF ESTIMATE                          ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5     
 
         1.54E+01  2.02E+01  3.78E+00  1.19E+02  3.94E-02
 


 OMEGA - COV MATRIX FOR RANDOM EFFECTS - ETAS  ********


            ETA1      ETA2      ETA3      ETA4   
 
 ETA1
+        9.10E-02
 
 ETA2
+       .........  1.16E-01
 
 ETA3
+       ......... .........  2.11E-01
 
 ETA4
+       ......... ......... .........  1.57E-02
 


 SIGMA - COV MATRIX FOR RANDOM EFFECTS - EPSILONS  ****


            EPS1   
 
 EPS1
+        8.04E-02
 
1


 OMEGA - CORR MATRIX FOR RANDOM EFFECTS - ETAS  *******


            ETA1      ETA2      ETA3      ETA4   
 
 ETA1
+        8.34E-02
 
 ETA2
+       .........  1.12E-01
 
 ETA3
+       ......... .........  1.50E-01
 
 ETA4
+       ......... ......... .........  4.73E-02
 


 SIGMA - CORR MATRIX FOR RANDOM EFFECTS - EPSILONS  ***


            EPS1   
 
 EPS1
+        5.26E-02
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                          COVARIANCE MATRIX OF ESTIMATE                         ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      OM11      OM12      OM13      OM14      OM22      OM23      OM24  
             OM33      OM34      OM44      SG11  
 
 TH 1
+        2.38E+02
 
 TH 2
+        7.14E+01  4.07E+02
 
 TH 3
+        3.01E+01  9.08E+00  1.43E+01
 
 TH 4
+       -1.20E+02 -1.67E+02  2.66E+02  1.42E+04
 
 TH 5
+       -1.22E-01  8.12E-02  5.74E-02  3.45E-01  1.55E-03
 
 OM11
+       -2.42E-01 -8.36E-01 -2.85E-02  2.68E+00  4.69E-04  8.28E-03
 
 OM12
+       ......... ......... ......... ......... ......... ......... .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... .........
 
 OM14
+       ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM22
+        6.73E-01  5.11E-01  9.07E-02  1.40E+00  7.65E-04  1.48E-03 ......... ......... .........  1.35E-02
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM24
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM33
+       -3.45E-01 -2.49E+00  2.46E-01  1.20E+01  2.51E-03  1.52E-02 ......... ......... .........  6.32E-03 ......... .........
          4.44E-02
 
 OM34
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... .........
 
 OM44
+       -7.20E-02 -7.24E-02 -8.35E-05 -3.02E-01  3.70E-04 -1.57E-04 ......... ......... .........  2.43E-04 ......... .........
          4.93E-04 .........  2.46E-04
 
 SG11
+       -5.90E-01  7.32E-01 -1.26E-01  1.25E-01  5.12E-04  2.14E-03 ......... ......... .........  8.44E-04 ......... .........
         -1.83E-03 ......... -3.15E-04  6.46E-03
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                          CORRELATION MATRIX OF ESTIMATE                        ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      OM11      OM12      OM13      OM14      OM22      OM23      OM24  
             OM33      OM34      OM44      SG11  
 
 TH 1
+        1.54E+01
 
 TH 2
+        2.30E-01  2.02E+01
 
 TH 3
+        5.16E-01  1.19E-01  3.78E+00
 
 TH 4
+       -6.53E-02 -6.95E-02  5.90E-01  1.19E+02
 
 TH 5
+       -2.00E-01  1.02E-01  3.86E-01  7.35E-02  3.94E-02
 
 OM11
+       -1.73E-01 -4.55E-01 -8.28E-02  2.47E-01  1.31E-01  9.10E-02
 
 OM12
+       ......... ......... ......... ......... ......... ......... .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... .........
 
 OM14
+       ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM22
+        3.75E-01  2.18E-01  2.06E-01  1.01E-01  1.67E-01  1.40E-01 ......... ......... .........  1.16E-01
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM24
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM33
+       -1.06E-01 -5.87E-01  3.09E-01  4.80E-01  3.03E-01  7.94E-01 ......... ......... .........  2.58E-01 ......... .........
          2.11E-01
 
 OM34
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... .........
 
 OM44
+       -2.97E-01 -2.29E-01 -1.41E-03 -1.62E-01  6.00E-01 -1.10E-01 ......... ......... .........  1.33E-01 ......... .........
          1.49E-01 .........  1.57E-02
 
 SG11
+       -4.76E-01  4.52E-01 -4.14E-01  1.31E-02  1.62E-01  2.92E-01 ......... ......... .........  9.03E-02 ......... .........
         -1.08E-01 ......... -2.50E-01  8.04E-02
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                      INVERSE COVARIANCE MATRIX OF ESTIMATE                     ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      OM11      OM12      OM13      OM14      OM22      OM23      OM24  
             OM33      OM34      OM44      SG11  
 
 TH 1
+        9.48E-02
 
 TH 2
+       -1.25E-02  1.86E-02
 
 TH 3
+       -3.36E-01 -6.69E-02  3.27E+00
 
 TH 4
+        5.34E-03  7.81E-04 -5.20E-02  9.71E-04
 
 TH 5
+        1.13E+01  4.29E+00 -1.95E+02  3.20E+00  1.49E+04
 
 OM11
+       -1.30E+01  2.65E+00  3.83E+01 -4.39E-01 -7.07E+02  2.79E+03
 
 OM12
+       ......... ......... ......... ......... ......... ......... .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... .........
 
 OM14
+       ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM22
+       -5.02E+00  4.55E-01  9.11E+00 -1.12E-01  2.43E+02  7.71E+02 ......... ......... .........  4.32E+02
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM24
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM33
+        5.27E+00 -2.61E-01 -1.42E+01  9.77E-02 -7.98E+01 -1.14E+03 ......... ......... ......... -3.86E+02 ......... .........
          5.74E+02
 
 OM34
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... .........
 
 OM44
+        1.19E+01 -1.01E+01  2.20E+02 -3.31E+00 -2.14E+04 -1.91E+03 ......... ......... ......... -2.12E+03 ......... .........
          1.35E+03 .........  4.61E+04
 
 SG11
+        9.55E+00 -6.42E+00  4.99E+01 -8.62E-01 -5.36E+03 -2.12E+03 ......... ......... ......... -8.74E+02 ......... .........
          8.94E+02 .........  1.18E+04  4.82E+03
 
 #CPUT: Total CPU Time in Seconds,        6.453
Stop Time: 
Sun 01/15/2017 
04:43 PM
