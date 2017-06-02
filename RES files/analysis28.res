Sun 01/15/2017 
08:12 PM
;Model Desc: basic two cmt additive shift trt cl linear weight cl random vc cl q
;Project Name: raltest
;Project ID: NO PROJECT DESCRIPTION

;Project ID: NO PROJECT DESCRIPTION
 
$PROB RUN# analysis28
$INPUT C ID TREAT TIME DV AMT EVID sex race weight height age HC
$DATA RAL_FOR_NONMEM.CSV IGNORE=C
$SUBROUTINES ADVAN4 TRANS4
$PK
   TVCL=THETA(1)
   CL=TVCL*EXP(ETA(1))+THETA(6)*TREAT
   TVV2=THETA(2)
   V2=TVV2*EXP(ETA(2))
   TVQ=THETA(3)
   Q=TVQ*EXP(ETA(3))
   TVV3=THETA(4)
   V3=TVV3
   TVKA=THETA(5)
   KA=TVKA*EXP(ETA(4))*(weight**THETA(7))
   S2=V2
 
$ERROR
   Y = F + F*ERR(1)
 IPRE=F
 
$EST METHOD=1 INTERACTION PRINT=5 MAX=9999 SIG=3    MSFO=analysis28.msf 
$THETA 
  (0, 104);[CL]
  (0, 102);[V2]
  (0, 14.5);[Q]
  (0, 668);[V3]
  (0, 0.481);[KA]
  5;[trt]
  0.1;[wt]
$OMEGA
  0.4 ;[P] omega(1,1)
  0.4 ;[P] omega(2,2)
  0.4 ;[P] omega(3,3)
  0.4 ;[P] omega(4,4)
$SIGMA
  0.4 ;[P] sigma(1,1)
$COV
$TABLE ID TIME ONEHEADER NOPRINT FILE=analysis28.tab

  
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
 RUN# analysis28
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
0LENGTH OF THETA:   7
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
 -0.1000E+07     0.5000E+01     0.1000E+07
 -0.1000E+07     0.1000E+00     0.1000E+07
0INITIAL ESTIMATE OF OMEGA:
 0.4000E+00
 0.0000E+00   0.4000E+00
 0.0000E+00   0.0000E+00   0.4000E+00
 0.0000E+00   0.0000E+00   0.0000E+00   0.4000E+00
0INITIAL ESTIMATE OF SIGMA:
 0.4000E+00
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   3269.12010422104        NO. OF FUNC. EVALS.:  10
 CUMULATIVE NO. OF FUNC. EVALS.:       10
 NPARAMETR:  1.0400E+02  1.0200E+02  1.4500E+01  6.6800E+02  4.8100E-01  5.0000E+00  1.0000E-01  4.0000E-01  4.0000E-01  4.0000E-01
             4.0000E-01  4.0000E-01
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01  1.0000E-01
 GRADIENT:   7.7332E+00 -6.1873E+00  3.7601E-01  8.4114E+00  1.1030E+01 -2.6275E+02  4.7822E+01  3.2995E+00  2.4005E+00 -9.6112E+00
             1.2141E+01 -1.0086E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:   3150.26663129704        NO. OF FUNC. EVALS.:  11
 CUMULATIVE NO. OF FUNC. EVALS.:       67
 NPARAMETR:  7.3689E+01  1.1438E+02  1.4092E+01  4.3813E+02  4.8239E-01  4.8821E+01  5.5674E-02  3.6194E-01  4.1341E-01  3.3063E-01
             1.7061E-01  4.0468E-01
 PARAMETER: -2.4454E-01  2.1453E-01  7.1485E-02 -3.2178E-01  1.0288E-01  9.7643E-01  5.5674E-02  5.0012E-02  1.1648E-01  4.7613E-03
            -3.2605E-01  1.0582E-01
 GRADIENT:  -2.6130E+00  3.4746E+00  8.4971E+00 -2.0645E-01 -7.7367E+00 -3.8229E+00 -3.1028E+01  3.8685E+00 -1.7271E-01  3.8150E+00
             9.0305E+00 -1.0934E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:   3145.68815564506        NO. OF FUNC. EVALS.:  11
 CUMULATIVE NO. OF FUNC. EVALS.:      125
 NPARAMETR:  7.5387E+01  9.9418E+01  1.2430E+01  4.2563E+02  5.0014E-01  5.0207E+01  4.7705E-02  3.0895E-01  3.5364E-01  2.4869E-01
             5.7499E-02  4.0851E-01
 PARAMETER: -2.2176E-01  7.4356E-02 -5.4023E-02 -3.5072E-01  1.3902E-01  1.0041E+00  4.7705E-02 -2.9150E-02  3.8405E-02 -1.3763E-01
            -8.6985E-01  1.1053E-01
 GRADIENT:  -7.5874E-01 -2.9223E-01  2.3981E+00  3.6143E+00  2.3797E+00  5.1553E-01  1.0102E+01  1.5089E+00 -1.3563E+00  9.3839E-01
             1.5857E+00 -9.9158E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:   3145.06743130735        NO. OF FUNC. EVALS.:  11
 CUMULATIVE NO. OF FUNC. EVALS.:      181
 NPARAMETR:  7.6549E+01  9.7710E+01  1.1620E+01  3.8110E+02  5.1211E-01  5.0705E+01  3.5693E-02  2.8077E-01  3.9160E-01  2.0043E-01
             4.4293E-02  4.2126E-01
 PARAMETER: -2.0646E-01  5.7033E-02 -1.2140E-01 -4.6121E-01  1.6268E-01  1.0141E+00  3.5693E-02 -7.6972E-02  8.9392E-02 -2.4550E-01
            -1.0003E+00  1.2590E-01
 GRADIENT:   1.8594E-01  8.4018E-01  5.5227E-01  4.4548E-01 -1.5385E+00 -4.8478E-01 -6.3173E+00  3.6448E-01  1.1655E-01 -3.7626E-01
             6.2390E-02 -6.8725E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:   3144.73931807587        NO. OF FUNC. EVALS.:  19
 CUMULATIVE NO. OF FUNC. EVALS.:      274
 NPARAMETR:  7.6463E+01  9.5861E+01  1.1472E+01  3.8000E+02  1.1664E-01  5.0812E+01  3.9431E-01  2.7406E-01  4.2610E-01  2.1166E-01
             4.2956E-02  4.1977E-01
 PARAMETER: -2.0759E-01  3.7926E-02 -1.3427E-01 -4.6412E-01 -1.3168E+00  1.0162E+00  3.9431E-01 -8.9063E-02  1.3160E-01 -2.1823E-01
            -1.0156E+00  1.2413E-01
 GRADIENT:  -3.6369E-03 -2.5450E-02 -4.8318E-03  8.2322E-03 -3.1535E-02 -4.8176E-03 -1.3074E-01  4.6827E-03 -5.8573E-03 -6.2712E-03
             9.5173E-03  7.3826E-02

0ITERATION NO.:   22    OBJECTIVE VALUE:   3144.73929787880        NO. OF FUNC. EVALS.:  26
 CUMULATIVE NO. OF FUNC. EVALS.:      319
 NPARAMETR:  7.6460E+01  9.5923E+01  1.1472E+01  3.7994E+02  1.1645E-01  5.0809E+01  3.9475E-01  2.7400E-01  4.2632E-01  2.1174E-01
             4.2953E-02  4.1967E-01
 PARAMETER: -2.0763E-01  3.8576E-02 -1.3422E-01 -4.6427E-01 -1.3184E+00  1.0162E+00  3.9475E-01 -8.9172E-02  1.3186E-01 -2.1806E-01
            -1.0157E+00  1.2400E-01
 GRADIENT:  -4.2396E-03  4.7516E-04  3.7262E-03 -1.8274E-03 -8.0806E-05  4.9477E-03 -7.6571E-03 -2.1797E-04  2.5284E-03  7.0315E-04
             1.4290E-04 -1.8461E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:      319
 NO. OF SIG. DIGITS IN FINAL EST.:  3.1

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -6.3187E-03  2.9744E-02 -2.2587E-02  1.3455E-02
 SE:             1.4686E-01  1.5714E-01  1.2305E-01  4.6263E-02
 N:                      12          12          12          12

 P VAL.:         9.6568E-01  8.4987E-01  8.5435E-01  7.7117E-01

 ETAshrink(%):   1.0000E-10  1.2920E+01  3.2497E+00  1.9235E+01
 EBVshrink(%):   2.5129E+00  1.3395E+01  9.7851E+00  2.5509E+01
 EPSshrink(%):   3.3187E+00

 #TERE:
 Elapsed estimation time in seconds:     3.68
 Elapsed covariance time in seconds:     5.18
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************     3144.739       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7     
 
         7.65E+01  9.59E+01  1.15E+01  3.80E+02  1.16E-01  5.08E+01  3.95E-01
 


 OMEGA - COV MATRIX FOR RANDOM EFFECTS - ETAS  ********


            ETA1      ETA2      ETA3      ETA4   
 
 ETA1
+        2.74E-01
 
 ETA2
+        0.00E+00  4.26E-01
 
 ETA3
+        0.00E+00  0.00E+00  2.12E-01
 
 ETA4
+        0.00E+00  0.00E+00  0.00E+00  4.30E-02
 


 SIGMA - COV MATRIX FOR RANDOM EFFECTS - EPSILONS  ****


            EPS1   
 
 EPS1
+        4.20E-01
 
1


 OMEGA - CORR MATRIX FOR RANDOM EFFECTS - ETAS  *******


            ETA1      ETA2      ETA3      ETA4   
 
 ETA1
+        5.23E-01
 
 ETA2
+        0.00E+00  6.53E-01
 
 ETA3
+        0.00E+00  0.00E+00  4.60E-01
 
 ETA4
+        0.00E+00  0.00E+00  0.00E+00  2.07E-01
 


 SIGMA - CORR MATRIX FOR RANDOM EFFECTS - EPSILONS  ***


            EPS1   
 
 EPS1
+        6.48E-01
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                            STANDARD ERROR OF ESTIMATE                          ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7     
 
         1.32E+01  3.01E+01  3.02E+00  1.54E+02  4.35E-01  6.43E+00  8.88E-01
 


 OMEGA - COV MATRIX FOR RANDOM EFFECTS - ETAS  ********


            ETA1      ETA2      ETA3      ETA4   
 
 ETA1
+        9.23E-02
 
 ETA2
+       .........  2.05E-01
 
 ETA3
+       ......... .........  1.75E-01
 
 ETA4
+       ......... ......... .........  3.19E-02
 


 SIGMA - COV MATRIX FOR RANDOM EFFECTS - EPSILONS  ****


            EPS1   
 
 EPS1
+        5.64E-02
 
1


 OMEGA - CORR MATRIX FOR RANDOM EFFECTS - ETAS  *******


            ETA1      ETA2      ETA3      ETA4   
 
 ETA1
+        8.82E-02
 
 ETA2
+       .........  1.57E-01
 
 ETA3
+       ......... .........  1.90E-01
 
 ETA4
+       ......... ......... .........  7.70E-02
 


 SIGMA - CORR MATRIX FOR RANDOM EFFECTS - EPSILONS  ***


            EPS1   
 
 EPS1
+        4.35E-02
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                          COVARIANCE MATRIX OF ESTIMATE                         ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      OM11      OM12      OM13      OM14      OM22  
             OM23      OM24      OM33      OM34      OM44      SG11  
 
 TH 1
+        1.75E+02
 
 TH 2
+        1.74E+02  9.06E+02
 
 TH 3
+        2.42E+01  3.97E+00  9.11E+00
 
 TH 4
+        1.05E+03 -4.43E+02  3.98E+02  2.38E+04
 
 TH 5
+       -3.88E-01  1.03E+01 -3.26E-01 -2.49E+01  1.89E-01
 
 TH 6
+       -3.10E+01 -3.29E+01 -4.29E+00 -4.24E+02  5.47E-01  4.13E+01
 
 TH 7
+        7.68E-01 -2.10E+01  6.69E-01  4.96E+01 -3.86E-01 -1.06E+00  7.89E-01
 
 OM11
+       -8.17E-02 -9.53E-01  5.23E-02  6.32E+00 -8.46E-03  5.68E-02  1.68E-02  8.53E-03
 
 OM12
+       ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM14
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM22
+        4.27E-01 -2.24E+00 -2.20E-02 -1.24E+00 -4.10E-02  4.25E-01  8.45E-02  8.66E-03 ......... ......... .........  4.19E-02
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         .........
 
 OM24
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... .........
 
 OM33
+        9.13E-01 -2.28E+00  4.00E-01  2.38E+01 -4.94E-02 -3.60E-01  1.00E-01  8.48E-03 ......... ......... .........  1.03E-02
         ......... .........  3.07E-02
 
 OM34
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... .........
 
 OM44
+       -2.61E-02  2.11E-01 -2.14E-02 -2.73E+00  3.21E-03  5.04E-02 -6.13E-03 -1.89E-03 ......... ......... ......... -1.10E-03
         ......... ......... -3.26E-03 .........  1.02E-03
 
 SG11
+        7.07E-03  1.12E+00 -2.26E-02  1.53E-02  1.62E-02 -3.21E-02 -3.36E-02  1.05E-03 ......... ......... ......... -2.06E-03
         ......... ......... -3.05E-03 ......... -5.24E-04  3.18E-03
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                          CORRELATION MATRIX OF ESTIMATE                        ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      OM11      OM12      OM13      OM14      OM22  
             OM23      OM24      OM33      OM34      OM44      SG11  
 
 TH 1
+        1.32E+01
 
 TH 2
+        4.36E-01  3.01E+01
 
 TH 3
+        6.08E-01  4.37E-02  3.02E+00
 
 TH 4
+        5.15E-01 -9.53E-02  8.53E-01  1.54E+02
 
 TH 5
+       -6.74E-02  7.85E-01 -2.48E-01 -3.71E-01  4.35E-01
 
 TH 6
+       -3.65E-01 -1.70E-01 -2.21E-01 -4.27E-01  1.95E-01  6.43E+00
 
 TH 7
+        6.54E-02 -7.86E-01  2.50E-01  3.62E-01 -1.00E+00 -1.85E-01  8.88E-01
 
 OM11
+       -6.70E-02 -3.43E-01  1.88E-01  4.43E-01 -2.10E-01  9.58E-02  2.04E-01  9.23E-02
 
 OM12
+       ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM14
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM22
+        1.58E-01 -3.64E-01 -3.56E-02 -3.93E-02 -4.61E-01  3.23E-01  4.65E-01  4.58E-01 ......... ......... .........  2.05E-01
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         .........
 
 OM24
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... .........
 
 OM33
+        3.94E-01 -4.32E-01  7.57E-01  8.81E-01 -6.48E-01 -3.20E-01  6.44E-01  5.24E-01 ......... ......... .........  2.87E-01
         ......... .........  1.75E-01
 
 OM34
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... .........
 
 OM44
+       -6.19E-02  2.20E-01 -2.22E-01 -5.53E-01  2.31E-01  2.46E-01 -2.16E-01 -6.42E-01 ......... ......... ......... -1.68E-01
         ......... ......... -5.83E-01 .........  3.19E-02
 
 SG11
+        9.49E-03  6.59E-01 -1.33E-01  1.75E-03  6.58E-01 -8.85E-02 -6.71E-01  2.01E-01 ......... ......... ......... -1.79E-01
         ......... ......... -3.08E-01 ......... -2.91E-01  5.64E-02
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                      INVERSE COVARIANCE MATRIX OF ESTIMATE                     ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      OM11      OM12      OM13      OM14      OM22  
             OM23      OM24      OM33      OM34      OM44      SG11  
 
 TH 1
+        1.72E+04
 
 TH 2
+       -2.66E+03  4.12E+02
 
 TH 3
+       -3.83E+04  5.94E+03  8.56E+04
 
 TH 4
+       -2.93E+03  4.54E+02  6.54E+03  4.99E+02
 
 TH 5
+        3.65E+06 -5.65E+05 -8.15E+06 -6.22E+05  7.75E+08
 
 TH 6
+        1.97E+04 -3.05E+03 -4.39E+04 -3.35E+03  4.18E+06  2.25E+04
 
 TH 7
+        1.97E+06 -3.05E+05 -4.40E+06 -3.36E+05  4.18E+08  2.25E+06  2.26E+08
 
 OM11
+        5.70E+05 -8.83E+04 -1.27E+06 -9.73E+04  1.21E+08  6.54E+05  6.54E+07  1.90E+07
 
 OM12
+       ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM14
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM22
+       -1.52E+06  2.36E+05  3.40E+06  2.59E+05 -3.23E+08 -1.74E+06 -1.74E+08 -5.05E+07 ......... ......... .........  1.35E+08
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         .........
 
 OM24
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... .........
 
 OM33
+        2.99E+06 -4.63E+05 -6.67E+06 -5.09E+05  6.35E+08  3.42E+06  3.42E+08  9.93E+07 ......... ......... ......... -2.65E+08
         ......... .........  5.20E+08
 
 OM34
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... .........
 
 OM44
+        3.44E+06 -5.32E+05 -7.67E+06 -5.86E+05  7.30E+08  3.94E+06  3.94E+08  1.14E+08 ......... ......... ......... -3.04E+08
         ......... .........  5.98E+08 .........  6.88E+08
 
 SG11
+        5.35E+06 -8.30E+05 -1.20E+07 -9.13E+05  1.14E+09  6.13E+06  6.14E+08  1.78E+08 ......... ......... ......... -4.74E+08
         ......... .........  9.32E+08 .........  1.07E+09  1.67E+09
 
 #CPUT: Total CPU Time in Seconds,        8.688
Stop Time: 
Sun 01/15/2017 
08:13 PM
