Sun 01/15/2017 
08:12 PM
;Model Desc: basic two cmt additive shift trt vc linear weight cl random vc cl q
;Project Name: raltest
;Project ID: NO PROJECT DESCRIPTION

;Project ID: NO PROJECT DESCRIPTION
 
$PROB RUN# analysis24
$INPUT C ID TREAT TIME DV AMT EVID sex race weight height age HC
$DATA RAL_FOR_NONMEM.CSV IGNORE=C
$SUBROUTINES ADVAN4 TRANS4
$PK
   TVCL=THETA(1)
   CL=TVCL*EXP(ETA(1))+THETA(6)*TREAT
   TVV2=THETA(2)
   V2=TVV2*EXP(ETA(2))+THETA(7)*weight
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
 
$EST METHOD=1 INTERACTION PRINT=5 MAX=9999 SIG=3    MSFO=analysis24.msf 
$THETA 
  (0, 104);[CL]
  (0, 102);[V2]
  (0, 14.5);[Q]
  (0, 668);[V3]
  (0, 0.481);[KA]
  5;[trt]
  0.1;[wt]
$OMEGA
  0.004 ;[P] omega(1,1)
  0.004 ;[P] omega(2,2)
  0.004 ;[P] omega(3,3)
  0.004 ;[P] omega(4,4)
$SIGMA
  0.04 ;[P] sigma(1,1)
$COV
$TABLE ID TIME ONEHEADER NOPRINT FILE=analysis24.tab

  
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
 RUN# analysis24
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
 0.4000E-02
 0.0000E+00   0.4000E-02
 0.0000E+00   0.0000E+00   0.4000E-02
 0.0000E+00   0.0000E+00   0.0000E+00   0.4000E-02
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   6602.03579007439        NO. OF FUNC. EVALS.:  10
 CUMULATIVE NO. OF FUNC. EVALS.:       10
 NPARAMETR:  1.0400E+02  1.0200E+02  1.4500E+01  6.6800E+02  4.8100E-01  5.0000E+00  1.0000E-01  4.0000E-03  4.0000E-03  4.0000E-03
             4.0000E-03  4.0000E-02
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01  1.0000E-01
 GRADIENT:   1.9024E+03  3.8020E+02  3.0482E+02  8.1298E+01 -3.6689E+02 -8.7707E+02  3.0166E+02 -1.4304E+03 -1.1346E+02 -2.0266E+02
            -8.9516E+01 -6.2604E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:   3249.71795610260        NO. OF FUNC. EVALS.:  12
 CUMULATIVE NO. OF FUNC. EVALS.:       69
 NPARAMETR:  6.7395E+01  9.8848E+01  1.2023E+01  6.2546E+02  5.8191E-01  5.1366E+01  7.0615E-02  1.8739E-02  4.2870E-03  4.3985E-03
             4.5107E-03  3.9603E-01
 PARAMETER: -3.3381E-01  6.8609E-02 -8.7367E-02  3.4201E-02  2.9045E-01  1.0273E+00  7.0615E-02  8.7215E-01  1.3465E-01  1.4749E-01
             1.6007E-01  1.2463E+00
 GRADIENT:   2.9230E+01  2.0503E+01  1.4563E+01  1.6530E+01  6.0386E+01  1.6131E+01  1.2404E+01 -7.6242E+01 -3.7992E+00 -3.8660E+00
            -1.3834E+01 -1.7200E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:   3199.77990667993        NO. OF FUNC. EVALS.:  11
 CUMULATIVE NO. OF FUNC. EVALS.:      124
 NPARAMETR:  7.7756E+01  8.6712E+01  8.9285E+00  1.9946E+02  5.8852E-01  4.9965E+01  2.0958E-01  6.4118E-02  2.0380E-02  1.4009E-02
             1.2202E-01  3.1796E-01
 PARAMETER: -1.9082E-01 -6.2376E-02 -3.8490E-01 -1.1087E+00  3.0174E-01  9.9930E-01  2.0958E-01  1.4872E+00  9.1413E-01  7.2671E-01
             1.8090E+00  1.1365E+00
 GRADIENT:   5.3222E+01  2.3515E+01 -9.6207E+00 -2.2387E+01 -1.9310E+01  3.8332E+01  1.6758E+01 -4.3418E+01 -6.2740E+00 -1.0311E+01
             2.9858E+00 -1.9354E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:   3148.33653024117        NO. OF FUNC. EVALS.:  11
 CUMULATIVE NO. OF FUNC. EVALS.:      181
 NPARAMETR:  8.7143E+01  8.6388E+01  1.1455E+01  3.4398E+02  5.5047E-01  4.9834E+01  8.8632E-02  2.3676E-01  7.5585E-01  1.8944E-01
             4.4397E-02  4.0908E-01
 PARAMETER: -7.6837E-02 -6.6119E-02 -1.3568E-01 -5.6371E-01  2.3491E-01  9.9668E-01  8.8632E-02  2.1404E+00  2.7208E+00  2.0289E+00
             1.3034E+00  1.2625E+00
 GRADIENT:   1.2983E+01  1.9242E+00  4.1798E+00 -6.6503E+00 -2.6448E+01 -5.2715E+00 -2.4456E+00 -5.1156E+00  5.7814E+00  6.2229E-01
             3.6116E-01 -1.5287E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:   3145.20545980901        NO. OF FUNC. EVALS.:  14
 CUMULATIVE NO. OF FUNC. EVALS.:      240
 NPARAMETR:  8.2068E+01  8.9269E+01  1.1680E+01  3.7911E+02  5.9452E-01  5.0442E+01  1.4402E-01  2.6630E-01  4.3259E-01  2.0197E-01
             4.3059E-02  4.2367E-01
 PARAMETER: -1.3684E-01 -3.3323E-02 -1.1629E-01 -4.6646E-01  3.1190E-01  1.0088E+00  1.4402E-01  2.1992E+00  2.4417E+00  2.0609E+00
             1.2881E+00  1.2800E+00
 GRADIENT:   5.7130E+00  1.0041E+00  8.4725E-01 -2.8509E-01 -5.7718E-01 -1.3036E+00  6.5863E-02 -1.0133E+00 -1.9853E-01 -8.6632E-02
            -4.1493E-01 -1.2075E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:   3144.87790194556        NO. OF FUNC. EVALS.:  12
 CUMULATIVE NO. OF FUNC. EVALS.:      299
 NPARAMETR:  7.9061E+01  7.3752E+01  1.1430E+01  3.7491E+02  6.0266E-01  5.0541E+01  3.9915E-01  2.7081E-01  5.9878E-01  2.0321E-01
             4.7843E-02  4.1905E-01
 PARAMETER: -1.7417E-01 -2.2426E-01 -1.3794E-01 -4.7761E-01  3.2548E-01  1.0108E+00  3.9915E-01  2.2076E+00  2.6043E+00  2.0640E+00
             1.3408E+00  1.2746E+00
 GRADIENT:   2.9626E+00  1.6377E+00 -6.9213E-01  2.1050E-01  2.8141E-01 -4.4473E-03  1.2496E+00 -2.8662E-01 -4.6367E-01  5.1180E-02
            -3.4742E-01 -3.1816E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:   3144.69934076978        NO. OF FUNC. EVALS.:  11
 CUMULATIVE NO. OF FUNC. EVALS.:      355
 NPARAMETR:  7.5117E+01  5.9195E+01  1.1406E+01  3.6750E+02  5.9964E-01  5.0830E+01  5.5210E-01  2.7502E-01  8.3225E-01  1.9755E-01
             5.0412E-02  4.2084E-01
 PARAMETER: -2.2534E-01 -4.4414E-01 -1.4001E-01 -4.9757E-01  3.2047E-01  1.0166E+00  5.5210E-01  2.2153E+00  2.7689E+00  2.0498E+00
             1.3670E+00  1.2767E+00
 GRADIENT:  -1.0298E+00  8.0618E-01  1.8408E-01 -4.5932E-01 -1.6070E+00  6.2541E-02  5.5772E-01  1.4407E-01  1.8548E-02  3.4546E-02
             6.2889E-02  7.7716E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:   3144.65751034129        NO. OF FUNC. EVALS.:  11
 CUMULATIVE NO. OF FUNC. EVALS.:      412
 NPARAMETR:  7.6099E+01  4.9244E+01  1.1373E+01  3.6894E+02  6.0114E-01  5.0618E+01  6.4996E-01  2.7513E-01  1.0527E+00  1.9697E-01
             5.0714E-02  4.1881E-01
 PARAMETER: -2.1235E-01 -6.2819E-01 -1.4290E-01 -4.9365E-01  3.2297E-01  1.0124E+00  6.4996E-01  2.2155E+00  2.8864E+00  2.0484E+00
             1.3700E+00  1.2743E+00
 GRADIENT:   1.8542E-01  8.9862E-02 -3.6044E-02  2.0360E-01 -4.2822E-01 -6.9877E-01  2.1820E-04  1.1428E-01  1.3248E-01 -1.3165E-01
            -7.0302E-02 -3.1646E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:   3144.65430168365        NO. OF FUNC. EVALS.:  11
 CUMULATIVE NO. OF FUNC. EVALS.:      468
 NPARAMETR:  7.5913E+01  4.9029E+01  1.1368E+01  3.6774E+02  6.0191E-01  5.0768E+01  6.5165E-01  2.7262E-01  1.0450E+00  1.9731E-01
             5.1285E-02  4.1943E-01
 PARAMETER: -2.1480E-01 -6.3256E-01 -1.4332E-01 -4.9691E-01  3.2423E-01  1.0154E+00  6.5165E-01  2.2109E+00  2.8827E+00  2.0492E+00
             1.3756E+00  1.2750E+00
 GRADIENT:   8.1795E-03 -3.1732E-03 -5.8622E-03  6.4823E-02 -1.8798E-01  3.8485E-02 -7.9737E-03 -4.0343E-02 -8.7645E-03 -1.6038E-02
             5.6362E-03  1.7761E-02

0ITERATION NO.:   45    OBJECTIVE VALUE:   3144.64991369078        NO. OF FUNC. EVALS.:  21
 CUMULATIVE NO. OF FUNC. EVALS.:      541
 NPARAMETR:  7.6225E+01  4.9778E+01  1.1401E+01  3.6831E+02  6.0320E-01  5.0807E+01  6.4888E-01  2.7293E-01  1.0342E+00  1.9803E-01
             5.1492E-02  4.2050E-01
 PARAMETER: -2.1069E-01 -6.1740E-01 -1.4043E-01 -4.9538E-01  3.2638E-01  1.0161E+00  6.4888E-01  2.2115E+00  2.8775E+00  2.0511E+00
             1.3776E+00  1.2763E+00
 GRADIENT:  -1.7537E-01 -5.6099E-02  2.9704E-02 -2.9978E-02 -2.3500E-01 -6.3052E-02 -4.6547E-02 -1.3039E-02  2.1997E-02  3.4990E-02
            -1.8150E-02 -2.4713E-01

0ITERATION NO.:   49    OBJECTIVE VALUE:   3144.64890044685        NO. OF FUNC. EVALS.:  16
 CUMULATIVE NO. OF FUNC. EVALS.:      614
 NPARAMETR:  7.6421E+01  5.0803E+01  1.1409E+01  3.6850E+02  6.0398E-01  5.0818E+01  6.4071E-01  2.7301E-01  1.0090E+00  1.9775E-01
             5.1711E-02  4.2104E-01
 PARAMETER: -2.0813E-01 -5.9701E-01 -1.3974E-01 -4.9485E-01  3.2768E-01  1.0164E+00  6.4071E-01  2.2116E+00  2.8652E+00  2.0503E+00
             1.3797E+00  1.2769E+00
 GRADIENT:  -1.7211E-04  3.7907E-04 -8.7262E-04 -1.9874E-04 -6.4887E-04 -9.8256E-04  1.6831E-03  3.3737E-04 -7.9801E-04  2.1715E-04
             1.0006E-04  5.4615E-04

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      614
 NO. OF SIG. DIGITS IN FINAL EST.:  4.1

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -7.2868E-04  1.0436E-01 -1.8209E-02  1.9902E-02
 SE:             1.4597E-01  2.2545E-01  1.1793E-01  5.2551E-02
 N:                      12          12          12          12

 P VAL.:         9.9602E-01  6.4344E-01  8.7728E-01  7.0489E-01

 ETAshrink(%):   1.0000E-10  1.8796E+01  4.0516E+00  1.6386E+01
 EBVshrink(%):   2.4472E+00  1.7906E+01  1.0421E+01  2.3050E+01
 EPSshrink(%):   2.9750E+00

 #TERE:
 Elapsed estimation time in seconds:     5.77
 Elapsed covariance time in seconds:     4.95
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************     3144.649       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7     
 
         7.64E+01  5.08E+01  1.14E+01  3.68E+02  6.04E-01  5.08E+01  6.41E-01
 


 OMEGA - COV MATRIX FOR RANDOM EFFECTS - ETAS  ********


            ETA1      ETA2      ETA3      ETA4   
 
 ETA1
+        2.73E-01
 
 ETA2
+        0.00E+00  1.01E+00
 
 ETA3
+        0.00E+00  0.00E+00  1.98E-01
 
 ETA4
+        0.00E+00  0.00E+00  0.00E+00  5.17E-02
 


 SIGMA - COV MATRIX FOR RANDOM EFFECTS - EPSILONS  ****


            EPS1   
 
 EPS1
+        4.21E-01
 
1


 OMEGA - CORR MATRIX FOR RANDOM EFFECTS - ETAS  *******


            ETA1      ETA2      ETA3      ETA4   
 
 ETA1
+        5.23E-01
 
 ETA2
+        0.00E+00  1.00E+00
 
 ETA3
+        0.00E+00  0.00E+00  4.45E-01
 
 ETA4
+        0.00E+00  0.00E+00  0.00E+00  2.27E-01
 


 SIGMA - CORR MATRIX FOR RANDOM EFFECTS - EPSILONS  ***


            EPS1   
 
 EPS1
+        6.49E-01
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                            STANDARD ERROR OF ESTIMATE                          ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7     
 
         1.43E+01  7.48E+01  2.95E+00  1.40E+02  6.81E-02  6.48E+00  7.56E-01
 


 OMEGA - COV MATRIX FOR RANDOM EFFECTS - ETAS  ********


            ETA1      ETA2      ETA3      ETA4   
 
 ETA1
+        9.17E-02
 
 ETA2
+       .........  1.87E+00
 
 ETA3
+       ......... .........  1.51E-01
 
 ETA4
+       ......... ......... .........  4.21E-02
 


 SIGMA - COV MATRIX FOR RANDOM EFFECTS - EPSILONS  ****


            EPS1   
 
 EPS1
+        5.19E-02
 
1


 OMEGA - CORR MATRIX FOR RANDOM EFFECTS - ETAS  *******


            ETA1      ETA2      ETA3      ETA4   
 
 ETA1
+        8.77E-02
 
 ETA2
+       .........  9.29E-01
 
 ETA3
+       ......... .........  1.70E-01
 
 ETA4
+       ......... ......... .........  9.26E-02
 


 SIGMA - CORR MATRIX FOR RANDOM EFFECTS - EPSILONS  ***


            EPS1   
 
 EPS1
+        4.00E-02
 
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
+        2.05E+02
 
 TH 2
+        7.19E+02  5.60E+03
 
 TH 3
+        1.96E+01  5.99E+01  8.69E+00
 
 TH 4
+        8.74E+02  3.13E+03  3.47E+02  1.95E+04
 
 TH 5
+       -6.99E-02 -6.54E-01 -8.65E-03 -4.72E+00  4.63E-03
 
 TH 6
+       -3.85E+01 -2.24E+02 -2.47E+00 -3.38E+02  2.13E-01  4.20E+01
 
 TH 7
+       -6.31E+00 -5.37E+01 -7.55E-01 -4.47E+01  1.45E-02  2.21E+00  5.72E-01
 
 OM11
+       -1.87E-01 -1.67E+00  4.84E-02  5.28E+00 -2.03E-03  8.28E-02  4.74E-03  8.41E-03
 
 OM12
+       ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM14
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM22
+       -1.57E+01 -1.35E+02 -1.80E+00 -1.01E+02  3.29E-02  6.37E+00  1.36E+00  4.33E-02 ......... ......... .........  3.48E+00
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         .........
 
 OM24
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... .........
 
 OM33
+        8.02E-01  2.29E+00  3.44E-01  1.88E+01 -3.95E-03 -2.76E-01 -4.65E-02  7.24E-03 ......... ......... ......... -7.89E-02
         ......... .........  2.29E-02
 
 OM34
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... .........
 
 OM44
+       -6.91E-02 -1.45E+00 -2.43E-02 -3.19E+00  1.73E-03  6.90E-02  1.93E-02 -2.04E-03 ......... ......... .........  4.08E-02
         ......... ......... -3.00E-03 .........  1.77E-03
 
 SG11
+        9.52E-03  1.30E+00 -2.30E-02  5.99E-01 -9.76E-04 -5.23E-02 -8.98E-03  1.05E-03 ......... ......... ......... -2.45E-02
         ......... ......... -1.52E-03 ......... -1.12E-03  2.70E-03
 
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
+        1.43E+01
 
 TH 2
+        6.71E-01  7.48E+01
 
 TH 3
+        4.64E-01  2.72E-01  2.95E+00
 
 TH 4
+        4.37E-01  3.00E-01  8.41E-01  1.40E+02
 
 TH 5
+       -7.18E-02 -1.28E-01 -4.31E-02 -4.96E-01  6.81E-02
 
 TH 6
+       -4.14E-01 -4.62E-01 -1.29E-01 -3.73E-01  4.83E-01  6.48E+00
 
 TH 7
+       -5.83E-01 -9.49E-01 -3.38E-01 -4.23E-01  2.82E-01  4.51E-01  7.56E-01
 
 OM11
+       -1.43E-01 -2.44E-01  1.79E-01  4.12E-01 -3.26E-01  1.39E-01  6.83E-02  9.17E-02
 
 OM12
+       ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM14
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM22
+       -5.88E-01 -9.69E-01 -3.27E-01 -3.86E-01  2.59E-01  5.26E-01  9.66E-01  2.53E-01 ......... ......... .........  1.87E+00
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         .........
 
 OM24
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... .........
 
 OM33
+        3.71E-01  2.02E-01  7.73E-01  8.89E-01 -3.83E-01 -2.82E-01 -4.07E-01  5.22E-01 ......... ......... ......... -2.80E-01
         ......... .........  1.51E-01
 
 OM34
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... .........
 
 OM44
+       -1.15E-01 -4.59E-01 -1.96E-01 -5.42E-01  6.03E-01  2.53E-01  6.06E-01 -5.28E-01 ......... ......... .........  5.19E-01
         ......... ......... -4.72E-01 .........  4.21E-02
 
 SG11
+        1.28E-02  3.34E-01 -1.50E-01  8.25E-02 -2.76E-01 -1.55E-01 -2.29E-01  2.21E-01 ......... ......... ......... -2.53E-01
         ......... ......... -1.94E-01 ......... -5.12E-01  5.19E-02
 
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
+        9.86E+04
 
 TH 2
+       -6.62E+04  4.44E+04
 
 TH 3
+       -4.73E+05  3.17E+05  2.27E+06
 
 TH 4
+       -3.34E+04  2.24E+04  1.60E+05  1.13E+04
 
 TH 5
+        3.90E+06 -2.62E+06 -1.87E+07 -1.32E+06  1.54E+08
 
 TH 6
+        2.30E+05 -1.55E+05 -1.10E+06 -7.81E+04  9.10E+06  5.38E+05
 
 TH 7
+        1.33E+07 -8.92E+06 -6.37E+07 -4.51E+06  5.25E+08  3.10E+07  1.79E+09
 
 OM11
+        7.40E+06 -4.97E+06 -3.55E+07 -2.51E+06  2.92E+08  1.73E+07  9.98E+08  5.56E+08
 
 OM12
+       ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM14
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM22
+       -8.04E+06  5.40E+06  3.85E+07  2.73E+06 -3.18E+08 -1.88E+07 -1.08E+09 -6.03E+08 ......... ......... .........  6.55E+08
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         .........
 
 OM24
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... .........
 
 OM33
+        4.34E+07 -2.91E+07 -2.08E+08 -1.47E+07  1.71E+09  1.01E+08  5.85E+09  3.26E+09 ......... ......... ......... -3.54E+09
         ......... .........  1.91E+10
 
 OM34
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... .........
 
 OM44
+        1.88E+07 -1.26E+07 -9.02E+07 -6.38E+06  7.43E+08  4.39E+07  2.54E+09  1.41E+09 ......... ......... ......... -1.53E+09
         ......... .........  8.28E+09 .........  3.59E+09
 
 SG11
+        4.13E+07 -2.77E+07 -1.98E+08 -1.40E+07  1.63E+09  9.64E+07  5.56E+09  3.10E+09 ......... ......... ......... -3.37E+09
         ......... .........  1.82E+10 .........  7.88E+09  1.73E+10
 
 #CPUT: Total CPU Time in Seconds,       10.266
Stop Time: 
Sun 01/15/2017 
08:12 PM
