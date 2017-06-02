Fri 01/20/2017 
12:27 AM
;Model Desc: basic two cmt additive shift vc random vc cl q
;Project Name: raltest
;Project ID: NO PROJECT DESCRIPTION

;Project ID: NO PROJECT DESCRIPTION
 
$PROB RUN# analysis14
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
   TVV3=THETA(4)+THETA(6)*TREAT
   V3=TVV3
   TVKA=THETA(5)
   KA=TVKA*EXP(ETA(4))
   S2=V2
 
$ERROR
   Y = F + F*ERR(1)
 IPRE=F
 
$EST METHOD=1 INTERACTION PRINT=5 MAX=9999 SIG=3    MSFO=analysis14.msf 
$THETA 
  (0, 104);[CL]
  (0, 102);[V2]
  (0, 14.5);[Q]
  (0, 668);[V3]
  (0, 0.481);[KA]
  500;[trt]
$OMEGA
  0.04 ;[P] omega(1,1)
  0.04 ;[P] omega(2,2)
  0.04 ;[P] omega(3,3)
  0.04 ;[P] omega(4,4)
$SIGMA
  0.04 ;[P] sigma(1,1)
$COV
$TABLE ID TIME ONEHEADER NOPRINT FILE=analysis14.tab

  
NM-TRAN MESSAGES 
  
 WARNINGS AND ERRORS (IF ANY) FOR PROBLEM    1
             
 (WARNING  2) NM-TRAN INFERS THAT THE DATA ARE POPULATION.
  
License Registered to: Carolyn Clayton
Expiration Date:    14 AUG 2017
Current Date:       20 JAN 2017
Days until program expires : 204
1NONLINEAR MIXED EFFECTS MODEL PROGRAM (NONMEM) VERSION 7.3.0
 ORIGINALLY DEVELOPED BY STUART BEAL, LEWIS SHEINER, AND ALISON BOECKMANN
 CURRENT DEVELOPERS ARE ROBERT BAUER, ICON DEVELOPMENT SOLUTIONS,
 AND ALISON BOECKMANN. IMPLEMENTATION, EFFICIENCY, AND STANDARDIZATION
 PERFORMED BY NOUS INFOSYSTEMS.

 PROBLEM NO.:         1
 RUN# analysis14
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
0LENGTH OF THETA:   6
0DEFAULT THETA BOUNDARY TEST OMITTED:    NO
0OMEGA HAS SIMPLE DIAGONAL FORM WITH DIMENSION:   4
0DEFAULT OMEGA BOUNDARY TEST OMITTED:    NO
0SIGMA HAS SIMPLE DIAGONAL FORM WITH DIMENSION:   1
0DEFAULT SIGMA BOUNDARY TEST OMITTED:    NO
0INITIAL ESTIMATE OF THETA:
 LOWER BOUND    INITIAL EST    UPPER BOUND
  0.0000E+00     0.1040E+03     0.1000E+07
  0.0000E+00     0.1020E+03     0.1000E+07
  0.0000E+00     0.1450E+02     0.1000E+07
  0.0000E+00     0.6680E+03     0.1000E+07
  0.0000E+00     0.4810E+00     0.1000E+07
 -0.1000E+07     0.5000E+03     0.1000E+07
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   5248.74607088399        NO. OF FUNC. EVALS.:   9
 CUMULATIVE NO. OF FUNC. EVALS.:        9
 NPARAMETR:  1.0400E+02  1.0200E+02  1.4500E+01  6.6800E+02  4.8100E-01  5.0000E+02  4.0000E-02  4.0000E-02  4.0000E-02  4.0000E-02
             4.0000E-02
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   2.3728E+02  1.0838E+02  7.3337E+01  1.2122E+02 -9.5647E+01 -9.8038E+02 -2.4987E+02 -6.1953E+01 -2.3091E+02 -1.9542E+01
            -4.6492E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:   3338.35752315442        NO. OF FUNC. EVALS.:  10
 CUMULATIVE NO. OF FUNC. EVALS.:       61
 NPARAMETR:  7.8603E+01  1.2770E+02  2.7993E+01  4.7043E+02  6.1920E-01  5.5049E+03  2.7359E-01  5.5251E-02  1.5314E-01  3.4891E-02
             2.4867E+00
 PARAMETER: -1.7997E-01  3.2470E-01  7.5782E-01 -2.5065E-01  3.5256E-01  1.1010E+00  1.0614E+00  2.6151E-01  7.7125E-01  3.1681E-02
             2.1649E+00
 GRADIENT:  -4.8800E+01 -2.1892E+01  8.5965E+00 -1.9261E+01  5.2003E+01 -3.3803E-01 -2.2252E+01 -4.5463E+00  2.2325E+00 -3.6250E-01
             2.1751E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:   3266.11312552471        NO. OF FUNC. EVALS.:  11
 CUMULATIVE NO. OF FUNC. EVALS.:      124
 NPARAMETR:  2.6524E+01  1.4213E+02  4.2232E+01  9.8339E+02  5.3509E-01  1.6098E+04  2.0276E+00  3.3585E-01  3.1329E-01  2.9309E-02
             7.4140E-01
 PARAMETER: -1.2663E+00  4.3179E-01  1.1690E+00  4.8672E-01  2.0657E-01  3.2196E+00  2.0629E+00  1.1639E+00  1.1291E+00 -5.5500E-02
             1.5598E+00
 GRADIENT:  -1.3605E+01  1.1117E+01  8.4447E+00 -8.0666E+00 -6.9657E+00  9.5460E+00 -5.4353E-01 -2.8428E+00  2.8457E+00  5.8530E-01
             5.8116E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:   3238.56821642790        NO. OF FUNC. EVALS.:  10
 CUMULATIVE NO. OF FUNC. EVALS.:      177
 NPARAMETR:  3.6663E+01  7.7626E+01  1.9486E+01  7.1304E+02  5.5460E-01  5.5142E+03  8.5271E-01  7.6063E-01  4.0728E-01  3.0578E-02
             5.5194E-01
 PARAMETER: -9.4262E-01 -1.7307E-01  3.9553E-01  1.6525E-01  2.4238E-01  1.1028E+00  1.6298E+00  1.5726E+00  1.2603E+00 -3.4304E-02
             1.4123E+00
 GRADIENT:  -2.4482E+01 -6.7341E+00 -1.0263E+01  1.0487E+01  1.0288E+01  3.9484E+00 -1.0774E+01  6.6842E+00  4.9030E+00  1.1302E+00
             3.7631E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:   3215.21036884790        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:      231
 NPARAMETR:  8.7914E+01  1.0194E+02  2.1891E+01  5.2862E+02  5.4284E-01  4.1127E+03  2.6929E-01  2.9542E-01  2.4492E-01  2.0651E-02
             5.0837E-01
 PARAMETER: -6.8034E-02  9.9428E-02  5.1193E-01 -1.3401E-01  2.2095E-01  8.2254E-01  1.0535E+00  1.0998E+00  1.0060E+00 -2.3056E-01
             1.3712E+00
 GRADIENT:  -6.5551E+00  2.0712E-01  5.5368E+00  2.7213E-01 -5.4216E+00 -2.4849E+00 -3.5387E+00 -4.4788E-01  4.4818E-01 -5.3454E-01
            -2.6469E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:   3214.60333073723        NO. OF FUNC. EVALS.:  10
 CUMULATIVE NO. OF FUNC. EVALS.:      281
 NPARAMETR:  9.4914E+01  1.0218E+02  2.0534E+01  5.1553E+02  5.4836E-01  4.1317E+03  3.0512E-01  3.1577E-01  2.3169E-01  2.3579E-02
             5.1348E-01
 PARAMETER:  8.5817E-03  1.0173E-01  4.4793E-01 -1.5910E-01  2.3107E-01  8.2634E-01  1.1159E+00  1.1331E+00  9.7825E-01 -1.6425E-01
             1.3762E+00
 GRADIENT:   6.6421E-02 -3.7372E-02 -3.3290E-02 -8.0420E-02 -3.4556E-03 -2.7127E-04 -1.9285E-02  2.5150E-02  9.4885E-04 -7.8649E-03
            -2.6147E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:   3214.60030860871        NO. OF FUNC. EVALS.:  17
 CUMULATIVE NO. OF FUNC. EVALS.:      360
 NPARAMETR:  9.5223E+01  1.0259E+02  2.0667E+01  5.1805E+02  5.4872E-01  4.1600E+03  3.0559E-01  3.1508E-01  2.3200E-01  2.3635E-02
             5.1597E-01
 PARAMETER:  1.1833E-02  1.0577E-01  4.5437E-01 -1.5421E-01  2.3171E-01  8.3200E-01  1.1167E+00  1.1320E+00  9.7893E-01 -1.6308E-01
             1.3786E+00
 GRADIENT:  -2.7001E-03 -9.0587E-04 -1.9517E-03 -2.7300E-04 -9.1376E-04 -5.3899E-04 -3.7535E-04 -5.9982E-04  6.9139E-04 -5.8968E-04
            -1.4066E-04

0ITERATION NO.:   31    OBJECTIVE VALUE:   3214.60030860871        NO. OF FUNC. EVALS.:  14
 CUMULATIVE NO. OF FUNC. EVALS.:      374
 NPARAMETR:  9.5223E+01  1.0259E+02  2.0667E+01  5.1805E+02  5.4872E-01  4.1600E+03  3.0559E-01  3.1508E-01  2.3200E-01  2.3635E-02
             5.1597E-01
 PARAMETER:  1.1833E-02  1.0577E-01  4.5437E-01 -1.5421E-01  2.3171E-01  8.3200E-01  1.1167E+00  1.1320E+00  9.7893E-01 -1.6308E-01
             1.3786E+00
 GRADIENT:  -2.7001E-03 -9.0587E-04 -1.9517E-03 -2.7300E-04 -9.1376E-04 -5.3899E-04 -3.7535E-04 -5.9982E-04  6.9139E-04 -5.8968E-04
            -1.4066E-04

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      374
 NO. OF SIG. DIGITS IN FINAL EST.:  3.4

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -1.8093E-03  2.5599E-02 -9.7486E-03  1.0597E-02
 SE:             1.5654E-01  1.3277E-01  1.2935E-01  2.6932E-02
 N:                      12          12          12          12

 P VAL.:         9.9078E-01  8.4711E-01  9.3992E-01  6.9396E-01

 ETAshrink(%):   1.0000E-10  1.4422E+01  2.8387E+00  3.6616E+01
 EBVshrink(%):   1.8653E+00  1.7269E+01  7.8451E+00  3.9074E+01
 EPSshrink(%):   2.7761E+00

 #TERE:
 Elapsed estimation time in seconds:     3.94
 Elapsed covariance time in seconds:     3.84
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************     3214.600       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6     
 
         9.52E+01  1.03E+02  2.07E+01  5.18E+02  5.49E-01  4.16E+03
 


 OMEGA - COV MATRIX FOR RANDOM EFFECTS - ETAS  ********


            ETA1      ETA2      ETA3      ETA4   
 
 ETA1
+        3.06E-01
 
 ETA2
+        0.00E+00  3.15E-01
 
 ETA3
+        0.00E+00  0.00E+00  2.32E-01
 
 ETA4
+        0.00E+00  0.00E+00  0.00E+00  2.36E-02
 


 SIGMA - COV MATRIX FOR RANDOM EFFECTS - EPSILONS  ****


            EPS1   
 
 EPS1
+        5.16E-01
 
1


 OMEGA - CORR MATRIX FOR RANDOM EFFECTS - ETAS  *******


            ETA1      ETA2      ETA3      ETA4   
 
 ETA1
+        5.53E-01
 
 ETA2
+        0.00E+00  5.61E-01
 
 ETA3
+        0.00E+00  0.00E+00  4.82E-01
 
 ETA4
+        0.00E+00  0.00E+00  0.00E+00  1.54E-01
 


 SIGMA - CORR MATRIX FOR RANDOM EFFECTS - EPSILONS  ***


            EPS1   
 
 EPS1
+        7.18E-01
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                            STANDARD ERROR OF ESTIMATE                          ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6     
 
         1.46E+01  1.98E+01  4.40E+00  1.28E+02  3.02E-02  1.58E+03
 


 OMEGA - COV MATRIX FOR RANDOM EFFECTS - ETAS  ********


            ETA1      ETA2      ETA3      ETA4   
 
 ETA1
+        9.86E-02
 
 ETA2
+       .........  1.37E-01
 
 ETA3
+       ......... .........  1.27E-01
 
 ETA4
+       ......... ......... .........  1.81E-02
 


 SIGMA - COV MATRIX FOR RANDOM EFFECTS - EPSILONS  ****


            EPS1   
 
 EPS1
+        7.24E-02
 
1


 OMEGA - CORR MATRIX FOR RANDOM EFFECTS - ETAS  *******


            ETA1      ETA2      ETA3      ETA4   
 
 ETA1
+        8.92E-02
 
 ETA2
+       .........  1.22E-01
 
 ETA3
+       ......... .........  1.32E-01
 
 ETA4
+       ......... ......... .........  5.89E-02
 


 SIGMA - CORR MATRIX FOR RANDOM EFFECTS - EPSILONS  ***


            EPS1   
 
 EPS1
+        5.04E-02
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                          COVARIANCE MATRIX OF ESTIMATE                         ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      OM11      OM12      OM13      OM14      OM22      OM23  
             OM24      OM33      OM34      OM44      SG11  
 
 TH 1
+        2.14E+02
 
 TH 2
+        9.80E+01  3.93E+02
 
 TH 3
+        2.80E+01 -6.12E+00  1.94E+01
 
 TH 4
+       -2.67E+01 -6.20E+02  4.52E+02  1.63E+04
 
 TH 5
+       -2.26E-01  3.73E-03 -5.00E-02 -5.73E-01  9.13E-04
 
 TH 6
+       -3.87E+03 -7.57E+03  4.56E+03  1.56E+05 -6.15E+00  2.49E+06
 
 OM11
+       -3.60E-01 -8.48E-01 -1.34E-02  3.04E+00  1.47E-03  4.67E+00  9.73E-03
 
 OM12
+       ......... ......... ......... ......... ......... ......... ......... .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM14
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM22
+        4.29E-01 -3.52E-01  1.05E-01  4.71E+00  3.03E-04  1.25E+01  4.99E-03 ......... ......... .........  1.86E-02
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM24
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         .........
 
 OM33
+       -3.47E-02 -1.17E+00  1.59E-01  7.28E+00  1.23E-03 -6.18E+00  9.50E-03 ......... ......... .........  5.40E-03 .........
         .........  1.61E-02
 
 OM34
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... .........
 
 OM44
+       -1.21E-01 -6.71E-02 -6.20E-02 -9.45E-01  3.52E-05 -1.44E+01  2.07E-04 ......... ......... ......... -9.56E-05 .........
         ......... -1.77E-04 .........  3.28E-04
 
 SG11
+       -5.19E-01  6.01E-01 -1.52E-01 -1.85E+00  1.41E-03 -1.78E+01  2.37E-03 ......... ......... .........  1.80E-03 .........
         ......... -7.60E-04 .........  3.44E-04  5.24E-03
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                          CORRELATION MATRIX OF ESTIMATE                        ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      OM11      OM12      OM13      OM14      OM22      OM23  
             OM24      OM33      OM34      OM44      SG11  
 
 TH 1
+        1.46E+01
 
 TH 2
+        3.38E-01  1.98E+01
 
 TH 3
+        4.36E-01 -7.02E-02  4.40E+00
 
 TH 4
+       -1.43E-02 -2.45E-01  8.04E-01  1.28E+02
 
 TH 5
+       -5.13E-01  6.23E-03 -3.76E-01 -1.48E-01  3.02E-02
 
 TH 6
+       -1.68E-01 -2.42E-01  6.57E-01  7.73E-01 -1.29E-01  1.58E+03
 
 OM11
+       -2.50E-01 -4.34E-01 -3.09E-02  2.41E-01  4.94E-01  3.00E-02  9.86E-02
 
 OM12
+       ......... ......... ......... ......... ......... ......... ......... .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM14
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM22
+        2.15E-01 -1.30E-01  1.74E-01  2.70E-01  7.36E-02  5.80E-02  3.71E-01 ......... ......... .........  1.37E-01
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM24
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         .........
 
 OM33
+       -1.87E-02 -4.66E-01  2.84E-01  4.49E-01  3.22E-01 -3.09E-02  7.59E-01 ......... ......... .........  3.12E-01 .........
         .........  1.27E-01
 
 OM34
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... .........
 
 OM44
+       -4.58E-01 -1.87E-01 -7.78E-01 -4.08E-01  6.43E-02 -5.03E-01  1.16E-01 ......... ......... ......... -3.86E-02 .........
         ......... -7.70E-02 .........  1.81E-02
 
 SG11
+       -4.91E-01  4.19E-01 -4.77E-01 -2.00E-01  6.44E-01 -1.56E-01  3.32E-01 ......... ......... .........  1.82E-01 .........
         ......... -8.28E-02 .........  2.62E-01  7.24E-02
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                      INVERSE COVARIANCE MATRIX OF ESTIMATE                     ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      OM11      OM12      OM13      OM14      OM22      OM23  
             OM24      OM33      OM34      OM44      SG11  
 
 TH 1
+        2.79E-01
 
 TH 2
+       -1.71E-01  1.87E-01
 
 TH 3
+       -7.31E-02  5.73E-01  5.85E+00
 
 TH 4
+       -5.09E-03 -4.25E-02 -3.77E-01  3.03E-02
 
 TH 5
+       -5.54E-01 -1.53E+01 -7.90E+01  1.10E+01  1.07E+04
 
 TH 6
+        1.35E-03  2.28E-03  2.30E-02 -2.00E-03 -7.78E-01  1.39E-04
 
 OM11
+       -3.46E+01  3.55E+00 -1.33E+02  1.29E+01  5.43E+03 -9.84E-01  9.98E+03
 
 OM12
+       ......... ......... ......... ......... ......... ......... ......... .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM14
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM22
+       -1.15E+01  9.89E+00  2.15E+01 -1.49E+00 -5.68E+02  6.05E-02  7.07E+02 ......... ......... .........  6.46E+02
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM24
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         .........
 
 OM33
+        1.99E+01  2.31E+01  2.58E+02 -2.32E+01 -9.92E+03  1.63E+00 -1.23E+04 ......... ......... .........  5.05E+02 .........
         .........  1.95E+04
 
 OM34
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... .........
 
 OM44
+        5.84E+01  1.11E+02  1.28E+03 -9.62E+01 -2.65E+04  6.44E+00 -4.44E+04 ......... ......... .........  2.87E+03 .........
         .........  7.40E+04 .........  3.32E+05
 
 SG11
+        6.67E+01 -3.38E+01  6.93E+01 -7.99E+00 -4.19E+03  7.52E-01 -1.16E+04 ......... ......... ......... -2.47E+03 .........
         .........  1.02E+04 .........  3.34E+04  1.89E+04
 
 #CPUT: Total CPU Time in Seconds,        7.594
Stop Time: 
Fri 01/20/2017 
12:27 AM
