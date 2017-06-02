Sun 01/15/2017 
05:28 PM
;Model Desc: basic two cmt additive shift trt cl random vc cl q
;Project Name: raltest
;Project ID: NO PROJECT DESCRIPTION

;Project ID: NO PROJECT DESCRIPTION
 
$PROB RUN# analysis20
$INPUT C ID TREAT TIME DV AMT EVID sex race weight height age HC
$DATA RAL_FOR_NONMEM.CSV IGNORE=C
$SUBROUTINES ADVAN4 TRANS4
$PK
   TVCL=THETA(1)
   CL=TVCL*EXP(ETA(1))
   TVV2=THETA(2)
   V2=TVV2*EXP(ETA(2))
   TVQ=THETA(3)
   Q=TVQ*EXP(ETA(3))*EXP(THETA(6)*TREAT)
   TVV3=THETA(4)
   V3=TVV3
   TVKA=THETA(5)*EXP(ETA(4))
   KA=TVKA
   S2=V2
 
$ERROR
   Y = F + F*ERR(1)
 IPRE=F
 
$EST METHOD=1 INTERACTION PRINT=5 MAX=9999 SIG=3    MSFO=analysis20.msf 
$THETA 
  (0, 104);[CL]
  (0, 102);[V2]
  (0, 14.5);[Q]
  (0, 668);[V3]
  (0, 0.481);[KA]
  0.5;[trt]
$OMEGA
  0.04 ;[P] omega(1,1)
  0.04 ;[P] omega(2,2)
  0.04 ;[P] omega(3,3)
  0.04 ;[P] omega(4,4)
$SIGMA
  0.04 ;[P] sigma(1,1)
$COV
$TABLE ID TIME ONEHEADER NOPRINT FILE=analysis20.tab

  
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
 RUN# analysis20
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
 -0.1000E+07     0.5000E+00     0.1000E+07
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   5568.46327553858        NO. OF FUNC. EVALS.:   9
 CUMULATIVE NO. OF FUNC. EVALS.:        9
 NPARAMETR:  1.0400E+02  1.0200E+02  1.4500E+01  6.6800E+02  4.8100E-01  5.0000E-01  4.0000E-02  4.0000E-02  4.0000E-02  4.0000E-02
             4.0000E-02
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   2.3896E+02  1.0790E+02  1.3864E+02  1.3130E+01 -7.7545E+01  1.5805E+03 -2.5490E+02 -6.4022E+01 -2.2735E+02 -1.9005E+01
            -5.1917E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:   3264.42681428299        NO. OF FUNC. EVALS.:  10
 CUMULATIVE NO. OF FUNC. EVALS.:       59
 NPARAMETR:  1.1379E+02  1.0208E+02  2.0564E+01  4.4153E+02  5.1319E-01 -1.3330E+00  1.9191E-01  4.9596E-02  8.1309E-02  3.3773E-02
             6.4784E-01
 PARAMETER:  1.8998E-01  1.0077E-01  4.4939E-01 -3.1405E-01  1.6478E-01 -2.6661E-01  8.8407E-01  2.0751E-01  4.5469E-01  1.5398E-02
             1.4924E+00
 GRADIENT:   1.5001E+01  3.3575E+00 -1.7060E+01  1.0706E+01 -2.1039E+01 -2.9528E+02 -6.5763E+00 -7.3231E+00 -2.5580E+01  1.9942E+00
             2.2025E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:   3249.25005958351        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:      112
 NPARAMETR:  1.2228E+02  9.5950E+01  1.3596E+01  4.8948E+02  5.2468E-01 -1.1512E+00  4.9714E-01  6.2373E-01  3.0903E-01  6.2585E-03
             5.3199E-01
 PARAMETER:  2.6189E-01  3.8850E-02  3.5638E-02 -2.1094E-01  1.8692E-01 -2.3025E-01  1.3600E+00  1.4734E+00  1.1223E+00 -8.2747E-01
             1.3939E+00
 GRADIENT:   1.1115E+01  8.9820E-01 -2.8872E+01  5.9832E+00 -1.2929E+01 -2.2202E+02  6.6293E+00  4.4025E+00 -1.0145E+01 -2.3231E+00
            -6.6256E-02

0ITERATION NO.:   15    OBJECTIVE VALUE:   3237.87808035446        NO. OF FUNC. EVALS.:  10
 CUMULATIVE NO. OF FUNC. EVALS.:      165
 NPARAMETR:  9.8434E+01  1.0664E+02  1.7884E+01  5.7701E+02  5.4869E-01 -9.1119E-01  3.4217E-01  4.1749E-01  3.4342E-01  1.4568E-04
             5.2700E-01
 PARAMETER:  4.4991E-02  1.4445E-01  3.0975E-01 -4.6429E-02  2.3166E-01 -1.8224E-01  1.1732E+00  1.2727E+00  1.1750E+00 -2.7076E+00
             1.3892E+00
 GRADIENT:  -4.6439E-01 -4.0658E-01 -5.1696E+00  3.2615E+00  1.2405E+00 -9.2886E+00  2.3715E+00  1.4822E+00 -8.1805E-01 -1.5647E-02
            -5.4039E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:   3237.44374027342        NO. OF FUNC. EVALS.:  11
 CUMULATIVE NO. OF FUNC. EVALS.:      216
 NPARAMETR:  1.0013E+02  1.0965E+02  1.9468E+01  5.6865E+02  5.5043E-01 -9.1662E-01  3.0177E-01  3.6324E-01  3.4261E-01  8.0114E-05
             5.4099E-01
 PARAMETER:  6.2060E-02  1.7229E-01  3.9461E-01 -6.1030E-02  2.3483E-01 -1.8332E-01  1.1104E+00  1.2031E+00  1.1739E+00 -3.0066E+00
             1.4023E+00
 GRADIENT:   5.7965E-02 -2.6711E-02 -1.7720E-02  5.6517E-02 -6.5641E-02 -6.2844E-02 -6.7445E-03  4.6209E-03 -8.0377E-03 -1.0450E-02
            -6.8843E-02

0ITERATION NO.:   25    OBJECTIVE VALUE:   3237.44371914257        NO. OF FUNC. EVALS.:  10
 CUMULATIVE NO. OF FUNC. EVALS.:      266
 NPARAMETR:  1.0007E+02  1.0970E+02  1.9462E+01  5.6783E+02  5.5068E-01 -9.1717E-01  3.0186E-01  3.6349E-01  3.4227E-01  8.3024E-05
             5.4093E-01
 PARAMETER:  6.1511E-02  1.7280E-01  3.9430E-01 -6.2473E-02  2.3529E-01 -1.8343E-01  1.1105E+00  1.2034E+00  1.1734E+00 -2.9888E+00
             1.4022E+00
 GRADIENT:   2.5175E-02 -1.2027E-02 -1.9508E-02 -2.7040E-03  4.3317E-02 -2.3960E-01  9.8399E-03  9.8175E-03 -1.2159E-02 -1.0615E-02
            -5.2399E-02

0ITERATION NO.:   30    OBJECTIVE VALUE:   3235.69206035478        NO. OF FUNC. EVALS.:  17
 CUMULATIVE NO. OF FUNC. EVALS.:      326
 NPARAMETR:  9.7825E+01  1.1156E+02  1.9190E+01  5.3306E+02  5.5969E-01 -9.4146E-01  3.0770E-01  3.7342E-01  3.2737E-01  4.2566E-02
             5.3771E-01
 PARAMETER:  3.8788E-02  1.8959E-01  3.8026E-01 -1.2565E-01  2.5152E-01 -1.8829E-01  1.1201E+00  1.2169E+00  1.1511E+00  1.3108E-01
             1.3992E+00
 GRADIENT:  -2.0551E+00  1.9394E+00 -1.8915E+00  2.5747E-01  6.5052E+00 -3.7946E+01  3.3623E-01  1.4963E+00 -8.1980E-01  2.4777E+00
             3.9170E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:   3234.82316912133        NO. OF FUNC. EVALS.:  10
 CUMULATIVE NO. OF FUNC. EVALS.:      376
 NPARAMETR:  1.0053E+02  1.0598E+02  1.9227E+01  5.6231E+02  5.3903E-01 -8.8109E-01  3.0011E-01  3.1959E-01  3.5579E-01  2.3112E-02
             5.3058E-01
 PARAMETER:  6.6102E-02  1.3832E-01  3.8217E-01 -7.2229E-02  2.1391E-01 -1.7622E-01  1.1076E+00  1.1391E+00  1.1927E+00 -1.7426E-01
             1.3925E+00
 GRADIENT:   4.5565E-02  5.5526E-01 -1.6300E-01  3.0752E-01  7.2716E-02 -1.7338E+00 -3.4904E-01  1.1271E-01  5.3383E-02 -2.8702E-01
            -1.7331E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:   3234.80761123504        NO. OF FUNC. EVALS.:  17
 CUMULATIVE NO. OF FUNC. EVALS.:      443
 NPARAMETR:  1.0088E+02  1.0531E+02  1.9301E+01  5.6131E+02  5.3905E-01 -8.7717E-01  3.0420E-01  3.1707E-01  3.5512E-01  2.4735E-02
             5.3489E-01
 PARAMETER:  6.9515E-02  1.3190E-01  3.8598E-01 -7.4023E-02  2.1394E-01 -1.7543E-01  1.1144E+00  1.1351E+00  1.1918E+00 -1.4032E-01
             1.3966E+00
 GRADIENT:  -7.7494E-02  5.2269E-03 -2.4670E-02  8.7406E-04 -1.5778E-01 -1.0124E-01  5.6757E-03  1.3583E-02  1.7514E-03  1.1279E-02
             3.4190E-04

0ITERATION NO.:   45    OBJECTIVE VALUE:   3234.80752405298        NO. OF FUNC. EVALS.:  17
 CUMULATIVE NO. OF FUNC. EVALS.:      533
 NPARAMETR:  1.0098E+02  1.0536E+02  1.9312E+01  5.6136E+02  5.3927E-01 -8.7706E-01  3.0409E-01  3.1660E-01  3.5516E-01  2.4706E-02
             5.3498E-01
 PARAMETER:  7.0543E-02  1.3238E-01  3.8657E-01 -7.3935E-02  2.1435E-01 -1.7541E-01  1.1142E+00  1.1344E+00  1.1918E+00 -1.4092E-01
             1.3967E+00
 GRADIENT:  -2.9432E-03  3.3168E-03  4.1498E-03 -5.2322E-03 -5.0336E-03  2.9636E-02  1.9930E-04  3.1461E-04  1.4515E-03 -3.8235E-04
             5.6410E-03

0ITERATION NO.:   46    OBJECTIVE VALUE:   3234.80752405298        NO. OF FUNC. EVALS.:  14
 CUMULATIVE NO. OF FUNC. EVALS.:      547
 NPARAMETR:  1.0098E+02  1.0536E+02  1.9312E+01  5.6136E+02  5.3927E-01 -8.7706E-01  3.0409E-01  3.1660E-01  3.5516E-01  2.4706E-02
             5.3498E-01
 PARAMETER:  7.0543E-02  1.3238E-01  3.8657E-01 -7.3935E-02  2.1435E-01 -1.7541E-01  1.1142E+00  1.1344E+00  1.1918E+00 -1.4092E-01
             1.3967E+00
 GRADIENT:  -2.9432E-03  3.3168E-03  4.1498E-03 -5.2322E-03 -5.0336E-03  2.9636E-02  1.9930E-04  3.1461E-04  1.4515E-03 -3.8235E-04
             5.6410E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      547
 NO. OF SIG. DIGITS IN FINAL EST.:  3.3

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -4.2714E-03  2.4660E-02 -1.2894E-02  1.2752E-02
 SE:             1.5613E-01  1.3191E-01  1.6242E-01  2.6718E-02
 N:                      12          12          12          12

 P VAL.:         9.7817E-01  8.5171E-01  9.3673E-01  6.3317E-01

 ETAshrink(%):   1.0000E-10  1.5178E+01  1.3895E+00  3.8498E+01
 EBVshrink(%):   1.8515E+00  1.7176E+01  6.4802E+00  4.1337E+01
 EPSshrink(%):   2.8341E+00

 #TERE:
 Elapsed estimation time in seconds:     5.59
 Elapsed covariance time in seconds:     3.88
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************     3234.808       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6     
 
         1.01E+02  1.05E+02  1.93E+01  5.61E+02  5.39E-01 -8.77E-01
 


 OMEGA - COV MATRIX FOR RANDOM EFFECTS - ETAS  ********


            ETA1      ETA2      ETA3      ETA4   
 
 ETA1
+        3.04E-01
 
 ETA2
+        0.00E+00  3.17E-01
 
 ETA3
+        0.00E+00  0.00E+00  3.55E-01
 
 ETA4
+        0.00E+00  0.00E+00  0.00E+00  2.47E-02
 


 SIGMA - COV MATRIX FOR RANDOM EFFECTS - EPSILONS  ****


            EPS1   
 
 EPS1
+        5.35E-01
 
1


 OMEGA - CORR MATRIX FOR RANDOM EFFECTS - ETAS  *******


            ETA1      ETA2      ETA3      ETA4   
 
 ETA1
+        5.51E-01
 
 ETA2
+        0.00E+00  5.63E-01
 
 ETA3
+        0.00E+00  0.00E+00  5.96E-01
 
 ETA4
+        0.00E+00  0.00E+00  0.00E+00  1.57E-01
 


 SIGMA - CORR MATRIX FOR RANDOM EFFECTS - EPSILONS  ***


            EPS1   
 
 EPS1
+        7.31E-01
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                            STANDARD ERROR OF ESTIMATE                          ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6     
 
         1.71E+01  2.38E+01  6.63E+00  1.97E+02  3.46E-02  1.97E-01
 


 OMEGA - COV MATRIX FOR RANDOM EFFECTS - ETAS  ********


            ETA1      ETA2      ETA3      ETA4   
 
 ETA1
+        1.03E-01
 
 ETA2
+       .........  1.52E-01
 
 ETA3
+       ......... .........  2.06E-01
 
 ETA4
+       ......... ......... .........  2.13E-02
 


 SIGMA - COV MATRIX FOR RANDOM EFFECTS - EPSILONS  ****


            EPS1   
 
 EPS1
+        8.15E-02
 
1


 OMEGA - CORR MATRIX FOR RANDOM EFFECTS - ETAS  *******


            ETA1      ETA2      ETA3      ETA4   
 
 ETA1
+        9.33E-02
 
 ETA2
+       .........  1.35E-01
 
 ETA3
+       ......... .........  1.73E-01
 
 ETA4
+       ......... ......... .........  6.76E-02
 


 SIGMA - CORR MATRIX FOR RANDOM EFFECTS - EPSILONS  ***


            EPS1   
 
 EPS1
+        5.57E-02
 
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
+        2.92E+02
 
 TH 2
+        1.93E+02  5.67E+02
 
 TH 3
+        7.64E+01  1.70E+01  4.40E+01
 
 TH 4
+        1.06E+03 -2.43E+02  1.03E+03  3.90E+04
 
 TH 5
+       -1.04E-01  6.53E-03 -1.21E-02 -1.86E+00  1.20E-03
 
 TH 6
+       -1.03E+00  6.46E-02 -6.86E-01 -3.66E+00 -1.38E-03  3.88E-02
 
 OM11
+       -9.75E-02 -9.48E-01  9.44E-02  9.05E+00  3.65E-04  4.81E-03  1.06E-02
 
 OM12
+       ......... ......... ......... ......... ......... ......... ......... .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM14
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM22
+        1.20E+00  1.30E-01  3.35E-01  8.25E+00  4.44E-04 -2.19E-03  3.79E-03 ......... ......... .........  2.30E-02
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM24
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         .........
 
 OM33
+       -3.39E-02 -1.95E+00  3.92E-01  2.55E+01  2.93E-04  1.67E-02  1.79E-02 ......... ......... .........  7.17E-03 .........
         .........  4.23E-02
 
 OM34
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... .........
 
 OM44
+       -1.67E-01 -1.10E-01 -9.16E-02 -2.11E+00 -2.37E-05  2.60E-03 -6.48E-04 ......... ......... ......... -9.98E-04 .........
         ......... -4.52E-04 .........  4.52E-04
 
 SG11
+       -6.43E-01  6.67E-01 -3.11E-01 -4.08E+00  5.05E-04  6.29E-03  1.51E-03 ......... ......... ......... -2.73E-04 .........
         ......... -1.13E-03 ......... -1.54E-06  6.65E-03
 
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
+        1.71E+01
 
 TH 2
+        4.73E-01  2.38E+01
 
 TH 3
+        6.75E-01  1.08E-01  6.63E+00
 
 TH 4
+        3.14E-01 -5.18E-02  7.86E-01  1.97E+02
 
 TH 5
+       -1.77E-01  7.92E-03 -5.28E-02 -2.73E-01  3.46E-02
 
 TH 6
+       -3.07E-01  1.38E-02 -5.26E-01 -9.42E-02 -2.03E-01  1.97E-01
 
 OM11
+       -5.55E-02 -3.87E-01  1.38E-01  4.46E-01  1.03E-01  2.38E-01  1.03E-01
 
 OM12
+       ......... ......... ......... ......... ......... ......... ......... .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM14
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM22
+        4.62E-01  3.60E-02  3.34E-01  2.76E-01  8.47E-02 -7.35E-02  2.43E-01 ......... ......... .........  1.52E-01
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM24
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         .........
 
 OM33
+       -9.65E-03 -3.99E-01  2.88E-01  6.29E-01  4.12E-02  4.11E-01  8.47E-01 ......... ......... .........  2.30E-01 .........
         .........  2.06E-01
 
 OM34
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... .........
 
 OM44
+       -4.59E-01 -2.17E-01 -6.50E-01 -5.02E-01 -3.22E-02  6.21E-01 -2.97E-01 ......... ......... ......... -3.10E-01 .........
         ......... -1.03E-01 .........  2.13E-02
 
 SG11
+       -4.62E-01  3.43E-01 -5.75E-01 -2.53E-01  1.79E-01  3.92E-01  1.80E-01 ......... ......... ......... -2.21E-02 .........
         ......... -6.71E-02 ......... -8.87E-04  8.15E-02
 
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
+        5.24E-01
 
 TH 2
+       -3.79E-01  2.92E-01
 
 TH 3
+       -4.86E-01  2.95E-01  2.00E+00
 
 TH 4
+        3.79E-02 -2.82E-02 -7.95E-02  4.58E-03
 
 TH 5
+        1.35E+02 -1.06E+02 -2.34E+02  1.53E+01  5.45E+04
 
 TH 6
+        2.91E+01 -2.53E+01 -4.61E+01  3.61E+00  1.35E+04  3.87E+03
 
 OM11
+       -2.07E+01  1.30E+01 -7.08E+00  1.07E-01  1.10E+02  6.53E+02  3.23E+03
 
 OM12
+       ......... ......... ......... ......... ......... ......... ......... .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM14
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM22
+       -2.05E+01  1.51E+01  1.58E+01 -1.44E+00 -5.34E+03 -1.21E+03  7.79E+02 ......... ......... .........  8.63E+02
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM24
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         .........
 
 OM33
+       -3.52E+01  3.00E+01  6.68E+01 -4.79E+00 -1.72E+04 -4.76E+03 -1.35E+03 ......... ......... .........  1.43E+03 .........
         .........  6.21E+03
 
 OM34
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... .........
 
 OM44
+       -9.12E+01  8.22E+01  2.73E+02 -1.54E+01 -5.57E+04 -1.60E+04 -4.19E+03 ......... ......... .........  3.72E+03 .........
         .........  1.95E+04 .........  8.32E+04
 
 SG11
+        4.92E+01 -3.45E+01  4.34E+01  1.06E-01  2.01E+03 -2.92E+02 -5.13E+03 ......... ......... ......... -2.00E+03 .........
         .........  1.01E+03 .........  1.01E+04  1.18E+04
 
 #CPUT: Total CPU Time in Seconds,        9.000
Stop Time: 
Sun 01/15/2017 
05:28 PM
