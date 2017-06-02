Sun 01/15/2017 
05:28 PM
;Model Desc: basic two cmt additive shift trt cl random vc cl q
;Project Name: raltest
;Project ID: NO PROJECT DESCRIPTION

;Project ID: NO PROJECT DESCRIPTION
 
$PROB RUN# analysis19
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
   V3=TVV3*EXP(THETA(6)*TREAT)
   TVKA=THETA(5)*EXP(ETA(4))
   KA=TVKA
   S2=V2
 
$ERROR
   Y = F + F*ERR(1)
 IPRE=F
 
$EST METHOD=1 INTERACTION PRINT=5 MAX=9999 SIG=3    MSFO=analysis19.msf 
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
$TABLE ID TIME ONEHEADER NOPRINT FILE=analysis19.tab

  
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
 RUN# analysis19
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   5262.35210386111        NO. OF FUNC. EVALS.:   9
 CUMULATIVE NO. OF FUNC. EVALS.:        9
 NPARAMETR:  1.0400E+02  1.0200E+02  1.4500E+01  6.6800E+02  4.8100E-01  5.0000E-01  4.0000E-02  4.0000E-02  4.0000E-02  4.0000E-02
             4.0000E-02
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   2.3627E+02  1.0800E+02  7.6320E+01  2.4060E+01 -9.4839E+01 -1.1687E+03 -2.4925E+02 -6.1875E+01 -2.3498E+02 -1.9212E+01
            -4.6704E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:   3361.54970070699        NO. OF FUNC. EVALS.:  11
 CUMULATIVE NO. OF FUNC. EVALS.:       61
 NPARAMETR:  1.1103E+02  1.0012E+02  2.2333E+01  5.1604E+02  4.9016E-01  2.3299E+00  1.8503E-01  4.8523E-02  8.1299E-02  3.7716E-02
             3.3769E+00
 PARAMETER:  1.6541E-01  8.1411E-02  5.3191E-01 -1.5811E-01  1.1887E-01  4.6598E-01  8.6581E-01  1.9658E-01  4.5463E-01  7.0599E-02
             2.3179E+00
 GRADIENT:  -4.1311E+01 -2.2301E+01 -2.3224E+01 -1.1101E+00 -1.0383E+01  1.6573E+01 -1.6390E+01 -8.6612E-01 -7.5237E+00  6.0642E+00
             2.1934E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:   3292.88747710983        NO. OF FUNC. EVALS.:  10
 CUMULATIVE NO. OF FUNC. EVALS.:      111
 NPARAMETR:  7.2652E+00  9.0445E+01  2.1385E+01  7.2582E+02  5.6923E-01  2.2764E+00  3.4466E+02  2.4955E-01  4.8105E-01  2.3351E-02
             5.4499E-01
 PARAMETER: -2.5613E+00 -2.0236E-02  4.8855E-01  1.8301E-01  2.6842E-01  4.5527E-01  4.6307E+00  1.0154E+00  1.3435E+00 -1.6911E-01
             1.4059E+00
 GRADIENT:   4.8036E+00 -1.0917E+01 -6.7210E+00  1.6527E+01  2.9629E+01  5.6132E+01  2.3523E+01 -5.6247E+00  7.8825E+00 -1.2280E+00
             2.0355E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:   3239.77578663371        NO. OF FUNC. EVALS.:  10
 CUMULATIVE NO. OF FUNC. EVALS.:      165
 NPARAMETR:  3.0771E+01  1.0910E+02  2.1713E+01  5.1774E+02  5.1583E-01  2.5093E+00  1.0729E+00  6.1994E-01  1.8079E-01  1.7602E-02
             5.5554E-01
 PARAMETER: -1.1178E+00  1.6725E-01  5.0378E-01 -1.5481E-01  1.6991E-01  5.0186E-01  1.7446E+00  1.4704E+00  8.5422E-01 -3.1044E-01
             1.4155E+00
 GRADIENT:  -2.3172E+01  4.5942E+00 -5.1259E+00  3.9889E+00 -3.2134E+01  5.8962E+01 -1.2021E+01  6.1647E+00 -4.8577E+00 -2.2635E+00
             3.0422E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:   3216.66468513647        NO. OF FUNC. EVALS.:  10
 CUMULATIVE NO. OF FUNC. EVALS.:      216
 NPARAMETR:  8.3502E+01  1.0596E+02  2.0869E+01  5.1086E+02  5.6473E-01  2.0585E+00  2.8131E-01  2.3822E-01  2.7934E-01  3.8520E-02
             5.3098E-01
 PARAMETER: -1.1952E-01  1.3810E-01  4.6409E-01 -1.6820E-01  2.6048E-01  4.1170E-01  1.0753E+00  9.9217E-01  1.0718E+00  8.1150E-02
             1.3929E+00
 GRADIENT:  -1.1343E+01 -2.7852E-02  3.9662E+00 -4.9358E+00  3.1683E+00 -2.7002E+01 -3.0334E+00 -2.7326E+00  2.7017E+00  2.4249E+00
             1.6052E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:   3214.60360897186        NO. OF FUNC. EVALS.:  10
 CUMULATIVE NO. OF FUNC. EVALS.:      266
 NPARAMETR:  9.4838E+01  1.0204E+02  2.0567E+01  5.1727E+02  5.4854E-01  2.1950E+00  3.0655E-01  3.1666E-01  2.3228E-01  2.3521E-02
             5.1348E-01
 PARAMETER:  7.7779E-03  1.0037E-01  4.4952E-01 -1.5573E-01  2.3139E-01  4.3900E-01  1.1182E+00  1.1345E+00  9.7953E-01 -1.6550E-01
             1.3762E+00
 GRADIENT:   1.5249E-03 -1.4147E-01  6.4318E-02 -3.9312E-02  2.4778E-01 -9.6633E-02  6.4474E-02  5.4367E-02 -6.9528E-03 -2.7908E-02
            -2.3277E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:   3214.60042343432        NO. OF FUNC. EVALS.:  19
 CUMULATIVE NO. OF FUNC. EVALS.:      332
 NPARAMETR:  9.5114E+01  1.0253E+02  2.0651E+01  5.1836E+02  5.4865E-01  2.1997E+00  3.0547E-01  3.1504E-01  2.3221E-01  2.3548E-02
             5.1581E-01
 PARAMETER:  1.0690E-02  1.0522E-01  4.5363E-01 -1.5362E-01  2.3160E-01  4.3994E-01  1.1165E+00  1.1319E+00  9.7937E-01 -1.6491E-01
             1.3784E+00
 GRADIENT:  -8.1140E-02 -1.6078E-02 -5.5141E-02  4.9134E-02 -9.7203E-03 -4.7507E-02 -1.1460E-02  3.4827E-03  6.2802E-03 -1.6987E-02
            -3.9752E-02

0ITERATION NO.:   32    OBJECTIVE VALUE:   3214.60031311750        NO. OF FUNC. EVALS.:  14
 CUMULATIVE NO. OF FUNC. EVALS.:      363
 NPARAMETR:  9.5218E+01  1.0259E+02  2.0667E+01  5.1798E+02  5.4870E-01  2.2007E+00  3.0538E-01  3.1505E-01  2.3189E-01  2.3628E-02
             5.1598E-01
 PARAMETER:  1.1782E-02  1.0575E-01  4.5440E-01 -1.5435E-01  2.3168E-01  4.4014E-01  1.1163E+00  1.1319E+00  9.7869E-01 -1.6322E-01
             1.3786E+00
 GRADIENT:  -6.9450E-03  4.2523E-05  3.4108E-03 -6.3638E-03 -1.6432E-02  8.4332E-03 -1.4554E-02 -7.1092E-04 -5.3016E-03 -1.4278E-03
             3.7792E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      363
 NO. OF SIG. DIGITS IN FINAL EST.:  3.1

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -1.7544E-03  2.5588E-02 -9.7990E-03  1.0612E-02
 SE:             1.5653E-01  1.3276E-01  1.2933E-01  2.6929E-02
 N:                      12          12          12          12

 P VAL.:         9.9106E-01  8.4716E-01  9.3960E-01  6.9354E-01

 ETAshrink(%):   1.0000E-10  1.4422E+01  2.8282E+00  3.6614E+01
 EBVshrink(%):   1.8665E+00  1.7270E+01  7.8486E+00  3.9076E+01
 EPSshrink(%):   2.7763E+00

 #TERE:
 Elapsed estimation time in seconds:     3.91
 Elapsed covariance time in seconds:     4.16
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
 
         9.52E+01  1.03E+02  2.07E+01  5.18E+02  5.49E-01  2.20E+00
 


 OMEGA - COV MATRIX FOR RANDOM EFFECTS - ETAS  ********


            ETA1      ETA2      ETA3      ETA4   
 
 ETA1
+        3.05E-01
 
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
 
         1.49E+01  1.90E+01  4.42E+00  1.27E+02  3.02E-02  2.17E-01
 


 OMEGA - COV MATRIX FOR RANDOM EFFECTS - ETAS  ********


            ETA1      ETA2      ETA3      ETA4   
 
 ETA1
+        9.84E-02
 
 ETA2
+       .........  1.36E-01
 
 ETA3
+       ......... .........  1.27E-01
 
 ETA4
+       ......... ......... .........  1.81E-02
 


 SIGMA - COV MATRIX FOR RANDOM EFFECTS - EPSILONS  ****


            EPS1   
 
 EPS1
+        7.20E-02
 
1


 OMEGA - CORR MATRIX FOR RANDOM EFFECTS - ETAS  *******


            ETA1      ETA2      ETA3      ETA4   
 
 ETA1
+        8.91E-02
 
 ETA2
+       .........  1.21E-01
 
 ETA3
+       ......... .........  1.32E-01
 
 ETA4
+       ......... ......... .........  5.88E-02
 


 SIGMA - CORR MATRIX FOR RANDOM EFFECTS - EPSILONS  ***


            EPS1   
 
 EPS1
+        5.01E-02
 
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
+        2.21E+02
 
 TH 2
+        1.00E+02  3.62E+02
 
 TH 3
+        2.99E+01 -3.06E+00  1.95E+01
 
 TH 4
+       -2.97E+01 -5.10E+02  4.47E+02  1.62E+04
 
 TH 5
+       -2.36E-01 -1.34E-02 -5.06E-02 -5.25E-01  9.14E-04
 
 TH 6
+       -7.14E-01 -4.61E-01  2.00E-01  5.15E+00 -3.52E-04  4.72E-02
 
 OM11
+       -3.77E-01 -8.12E-01 -1.66E-02  2.98E+00  1.50E-03 -4.35E-03  9.69E-03
 
 OM12
+       ......... ......... ......... ......... ......... ......... ......... .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM14
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM22
+        4.31E-01 -3.08E-01  1.04E-01  4.59E+00  3.12E-04 -5.41E-03  4.94E-03 ......... ......... .........  1.86E-02
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM24
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         .........
 
 OM33
+       -5.64E-02 -1.11E+00  1.55E-01  7.18E+00  1.27E-03 -1.39E-02  9.47E-03 ......... ......... .........  5.33E-03 .........
         .........  1.60E-02
 
 OM34
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... .........
 
 OM44
+       -1.26E-01 -7.28E-02 -6.21E-02 -9.31E-01  3.52E-05 -1.47E-03  2.10E-04 ......... ......... ......... -9.44E-05 .........
         ......... -1.67E-04 .........  3.27E-04
 
 SG11
+       -5.22E-01  5.62E-01 -1.53E-01 -1.77E+00  1.39E-03 -7.02E-04  2.36E-03 ......... ......... .........  1.81E-03 .........
         ......... -7.40E-04 .........  3.30E-04  5.19E-03
 
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
+        1.49E+01
 
 TH 2
+        3.55E-01  1.90E+01
 
 TH 3
+        4.55E-01 -3.64E-02  4.42E+00
 
 TH 4
+       -1.57E-02 -2.10E-01  7.95E-01  1.27E+02
 
 TH 5
+       -5.24E-01 -2.33E-02 -3.79E-01 -1.36E-01  3.02E-02
 
 TH 6
+       -2.21E-01 -1.12E-01  2.09E-01  1.86E-01 -5.35E-02  2.17E-01
 
 OM11
+       -2.58E-01 -4.33E-01 -3.81E-02  2.38E-01  5.03E-01 -2.03E-01  9.84E-02
 
 OM12
+       ......... ......... ......... ......... ......... ......... ......... .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM14
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM22
+        2.12E-01 -1.19E-01  1.73E-01  2.64E-01  7.56E-02 -1.83E-01  3.68E-01 ......... ......... .........  1.36E-01
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM24
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         .........
 
 OM33
+       -2.99E-02 -4.60E-01  2.77E-01  4.45E-01  3.32E-01 -5.05E-01  7.59E-01 ......... ......... .........  3.09E-01 .........
         .........  1.27E-01
 
 OM34
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... .........
 
 OM44
+       -4.67E-01 -2.12E-01 -7.78E-01 -4.04E-01  6.43E-02 -3.74E-01  1.18E-01 ......... ......... ......... -3.83E-02 .........
         ......... -7.27E-02 .........  1.81E-02
 
 SG11
+       -4.88E-01  4.10E-01 -4.80E-01 -1.93E-01  6.37E-01 -4.49E-02  3.33E-01 ......... ......... .........  1.84E-01 .........
         ......... -8.11E-02 .........  2.53E-01  7.20E-02
 
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
+        2.81E-01
 
 TH 2
+       -1.86E-01  2.05E-01
 
 TH 3
+       -1.66E-01  6.24E-01  5.85E+00
 
 TH 4
+        9.46E-03 -2.66E-02 -1.94E-01  7.19E-03
 
 TH 5
+        1.42E+00 -1.60E+01 -7.59E+01  4.65E+00  1.05E+04
 
 TH 6
+        4.94E+00  1.11E+01  1.06E+02 -4.11E+00 -3.55E+03  3.00E+03
 
 OM11
+       -3.29E+01  3.55E+00 -1.29E+02  4.82E+00  5.29E+03 -4.58E+03  9.99E+03
 
 OM12
+       ......... ......... ......... ......... ......... ......... ......... .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM14
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM22
+       -1.17E+01  1.03E+01  2.26E+01 -1.07E+00 -5.78E+02  2.78E+02  7.09E+02 ......... ......... .........  6.45E+02
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM24
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         .........
 
 OM33
+        1.65E+01  2.43E+01  2.55E+02 -1.01E+01 -9.74E+03  7.57E+03 -1.23E+04 ......... ......... .........  5.01E+02 .........
         .........  1.95E+04
 
 OM34
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... .........
 
 OM44
+        4.40E+01  1.17E+02  1.28E+03 -4.44E+01 -2.57E+04  3.00E+04 -4.45E+04 ......... ......... .........  2.83E+03 .........
         .........  7.41E+04 .........  3.32E+05
 
 SG11
+        6.57E+01 -3.50E+01  6.28E+01 -1.65E+00 -4.04E+03  3.53E+03 -1.16E+04 ......... ......... ......... -2.46E+03 .........
         .........  1.02E+04 .........  3.38E+04  1.89E+04
 
 #CPUT: Total CPU Time in Seconds,        7.813
Stop Time: 
Sun 01/15/2017 
05:28 PM
