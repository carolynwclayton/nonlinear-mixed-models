Sun 01/15/2017 
08:19 PM
;Model Desc: basic two cmt additive shift trt cl linear weight cl random vc cl q
;Project Name: raltest
;Project ID: NO PROJECT DESCRIPTION

;Project ID: NO PROJECT DESCRIPTION
 
$PROB RUN# analysis22
$INPUT C ID TREAT TIME DV AMT EVID sex race weight height age HC
$DATA RAL_FOR_NONMEM.CSV IGNORE=C
$SUBROUTINES ADVAN4 TRANS4
$PK
   TVCL=THETA(1)
   CL=TVCL*EXP(ETA(1))+THETA(6)*TREAT+THETA(7)*weight
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
 
$EST METHOD=1 INTERACTION PRINT=5 MAX=9999 SIG=3    MSFO=analysis22.msf 
$THETA 
  (0, 104);[CL]
  (0, 102);[V2]
  (0, 14.5);[Q]
  (0, 668);[V3]
  (0, 0.481);[KA]
  5;[trt]
  -0.5;[wt]
$OMEGA
  0.04 ;[P] omega(1,1)
  0.04 ;[P] omega(2,2)
  0.04 ;[P] omega(3,3)
  0.004 ;[P] omega(4,4)
$SIGMA
  0.04 ;[P] sigma(1,1)
$COV
$TABLE ID TIME ONEHEADER NOPRINT FILE=analysis22.tab

  
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
 RUN# analysis22
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
 -0.1000E+07    -0.5000E+00     0.1000E+07
0INITIAL ESTIMATE OF OMEGA:
 0.4000E-01
 0.0000E+00   0.4000E-01
 0.0000E+00   0.0000E+00   0.4000E-01
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   5215.03827507833        NO. OF FUNC. EVALS.:  10
 CUMULATIVE NO. OF FUNC. EVALS.:       10
 NPARAMETR:  1.0400E+02  1.0200E+02  1.4500E+01  6.6800E+02  4.8100E-01  5.0000E+00 -5.0000E-01  4.0000E-02  4.0000E-02  4.0000E-02
             4.0000E-03  4.0000E-02
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01 -1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01  1.0000E-01
 GRADIENT:   5.2165E+00  1.7664E+02  1.2812E+02  5.6821E+00 -3.7963E+02 -1.2435E+03  2.2300E+02 -7.1349E+01 -1.0893E+02 -2.4180E+02
            -6.2724E+01 -4.6488E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:   3336.36919368648        NO. OF FUNC. EVALS.:  14
 CUMULATIVE NO. OF FUNC. EVALS.:       71
 NPARAMETR:  1.4935E+02  1.1322E+02  1.7481E+01  5.3377E+02  4.8040E-01  1.1891E+02 -5.8243E-01  1.1841E-01  7.3981E-02  1.0493E-01
             5.2062E-03  4.7032E+00
 PARAMETER:  4.6191E-01  2.0438E-01  2.8699E-01 -1.2432E-01  9.8762E-02  2.3783E+00 -1.1649E-01  6.4262E-01  4.0746E-01  5.8221E-01
             2.3177E-01  2.4836E+00
 GRADIENT:  -4.3375E+01 -2.1928E+01 -2.2638E+00 -9.8420E+00 -2.8178E+01  5.3882E+00 -8.3156E+01 -1.2697E+01 -3.2453E+00  9.5556E-01
             4.2881E-01  1.9687E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:   3303.67751460600        NO. OF FUNC. EVALS.:  15
 CUMULATIVE NO. OF FUNC. EVALS.:      131
 NPARAMETR:  2.5034E+02  1.3800E+02  8.7697E+00  5.4307E+02  5.3103E-01  1.1955E+02 -1.8969E+00  6.4953E-02  1.7910E+00  2.6592E+00
             3.7094E-02  2.3670E+00
 PARAMETER:  9.7844E-01  4.0231E-01 -4.0284E-01 -1.0705E-01  1.9895E-01  2.3910E+00 -3.7937E-01  3.4239E-01  2.0008E+00  2.1984E+00
             1.2136E+00  2.1402E+00
 GRADIENT:   2.1048E+00 -1.1285E-01 -6.9161E+00 -1.3337E+01 -7.1941E+00  3.5393E+01 -4.4695E+00 -5.7093E+00  1.2795E+01  1.6560E+01
             2.7885E+00  1.2311E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:   3181.64202119358        NO. OF FUNC. EVALS.:  11
 CUMULATIVE NO. OF FUNC. EVALS.:      191
 NPARAMETR:  3.8292E+01  4.9025E+01  1.2492E+01  4.8693E+02  5.0956E-01  5.0680E+01  3.8068E-01  3.2497E+00  1.4327E-02  8.4168E-01
             8.6430E-03  3.8022E-01
 PARAMETER: -8.9916E-01 -6.3265E-01 -4.9040E-02 -2.1617E-01  1.5767E-01  1.0136E+00  7.6135E-02  2.2987E+00 -4.1338E-01  1.6233E+00
             4.8523E-01  1.2259E+00
 GRADIENT:   1.4440E+00 -3.1019E+01  5.3333E+00 -2.7873E+00  1.9667E+01  2.0855E+01 -2.0650E+02  1.6073E+01 -1.2516E+00  1.3637E+01
            -1.0022E+01 -3.8702E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:   3155.14535637808        NO. OF FUNC. EVALS.:  11
 CUMULATIVE NO. OF FUNC. EVALS.:      248
 NPARAMETR:  4.4909E+01  9.1423E+01  1.1812E+01  4.2036E+02  5.7313E-01  5.2485E+01  5.3564E-01  1.2572E+00  2.1633E-02  2.6763E-01
             6.4882E-02  4.5207E-01
 PARAMETER: -7.3975E-01 -9.4750E-03 -1.0506E-01 -3.6318E-01  2.7525E-01  1.0497E+00  1.0713E-01  1.8239E+00 -2.0734E-01  1.0504E+00
             1.4931E+00  1.3125E+00
 GRADIENT:   5.9210E+00  7.7586E-02  1.6669E+00  1.9286E+00 -1.0915E+00  1.6121E+01  8.6518E+01  1.4984E+00 -4.1286E+00  1.6208E+00
             3.1222E+00 -2.7437E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:   3145.85347785806        NO. OF FUNC. EVALS.:  11
 CUMULATIVE NO. OF FUNC. EVALS.:      304
 NPARAMETR:  4.3654E+01  8.5357E+01  1.1402E+01  3.6133E+02  6.1110E-01  4.9922E+01  3.8044E-01  7.0810E-01  4.4103E-01  1.6787E-01
             4.4226E-02  4.3270E-01
 PARAMETER: -7.6809E-01 -7.8133E-02 -1.4038E-01 -5.1451E-01  3.3940E-01  9.9843E-01  7.6087E-02  1.5369E+00  1.3001E+00  8.1716E-01
             1.3015E+00  1.2906E+00
 GRADIENT:  -1.9220E+00 -4.6693E+00  1.1970E+00  1.6931E+00  9.2493E+00 -6.5746E+00 -5.3904E-01  3.0154E-01  4.3926E-01 -2.2391E+00
            -6.6085E-01  1.4671E+01

0ITERATION NO.:   30    OBJECTIVE VALUE:   3145.79687376103        NO. OF FUNC. EVALS.:  17
 CUMULATIVE NO. OF FUNC. EVALS.:      378
 NPARAMETR:  4.3718E+01  8.5528E+01  1.1394E+01  3.6105E+02  6.1046E-01  4.9981E+01  3.8039E-01  7.0761E-01  4.3717E-01  1.6985E-01
             4.4583E-02  4.3220E-01
 PARAMETER: -7.6663E-01 -7.6130E-02 -1.4104E-01 -5.1526E-01  3.3835E-01  9.9963E-01  7.6079E-02  1.5365E+00  1.2957E+00  8.2302E-01
             1.3055E+00  1.2900E+00
 GRADIENT:  -1.8607E+00 -4.6148E+00  1.1701E+00  1.5019E+00  8.8117E+00 -6.1351E+00  4.5583E-02  3.0542E-01  3.7687E-01 -2.0243E+00
            -5.5044E-01  1.4140E+01

0ITERATION NO.:   35    OBJECTIVE VALUE:   3145.79538183472        NO. OF FUNC. EVALS.:  20
 CUMULATIVE NO. OF FUNC. EVALS.:      497
 NPARAMETR:  4.3719E+01  8.5528E+01  1.1394E+01  3.6106E+02  6.1045E-01  4.9980E+01  3.8252E-01  7.0200E-01  4.3713E-01  1.6984E-01
             4.4587E-02  4.3222E-01
 PARAMETER: -7.6660E-01 -7.6133E-02 -1.4105E-01 -5.1524E-01  3.3833E-01  9.9960E-01  7.6505E-02  1.5325E+00  1.2957E+00  8.2299E-01
             1.3056E+00  1.2900E+00
 GRADIENT:  -2.5256E+00 -4.6749E+00  1.1063E+00  1.4820E+00  8.2972E+00 -6.3767E+00 -9.5189E-01  3.8409E-02  3.9636E-01 -2.0182E+00
            -5.4615E-01  1.3119E+01

0ITERATION NO.:   40    OBJECTIVE VALUE:   3145.65683469253        NO. OF FUNC. EVALS.:  12
 CUMULATIVE NO. OF FUNC. EVALS.:      630
 NPARAMETR:  4.9038E+01  8.5547E+01  1.1393E+01  3.6116E+02  6.1034E-01  4.9954E+01  3.6504E-01  6.9908E-01  4.3651E-01  1.6969E-01
             4.4651E-02  4.3276E-01
 PARAMETER: -6.5179E-01 -7.5912E-02 -1.4113E-01 -5.1496E-01  3.3814E-01  9.9907E-01  7.3007E-02  1.5304E+00  1.2950E+00  8.2255E-01
             1.3063E+00  1.2907E+00
 GRADIENT:   8.6678E-01 -4.7904E+00  8.0877E-01  1.2466E+00  8.9502E+00 -5.8234E+00  1.2755E+01  1.4925E+00  2.4757E-01 -2.0588E+00
            -5.1641E-01  1.2948E+01

0ITERATION NO.:   45    OBJECTIVE VALUE:   3145.42088924593        NO. OF FUNC. EVALS.:  20
 CUMULATIVE NO. OF FUNC. EVALS.:      695
 NPARAMETR:  5.9634E+01  8.5545E+01  1.1393E+01  3.6119E+02  6.1029E-01  4.9951E+01  2.2403E-01  4.3022E-01  4.3633E-01  1.6966E-01
             4.4671E-02  4.3265E-01
 PARAMETER: -4.5616E-01 -7.5926E-02 -1.4115E-01 -5.1489E-01  3.3806E-01  9.9901E-01  4.4807E-02  1.2877E+00  1.2948E+00  8.2244E-01
             1.3065E+00  1.2905E+00
 GRADIENT:  -4.0636E-01 -4.7607E+00  7.0638E-01  1.1718E+00  8.0989E+00 -6.1403E+00 -3.4520E+00  3.4757E-02  8.5672E-02 -2.1596E+00
            -4.6777E-01  1.2950E+01

0ITERATION NO.:   50    OBJECTIVE VALUE:   3145.35210406555        NO. OF FUNC. EVALS.:  20
 CUMULATIVE NO. OF FUNC. EVALS.:      796
 NPARAMETR:  5.7276E+01  8.5548E+01  1.1393E+01  3.6113E+02  6.0999E-01  5.0042E+01  2.5642E-01  4.8617E-01  4.3640E-01  1.6983E-01
             4.4696E-02  4.2741E-01
 PARAMETER: -4.9651E-01 -7.5900E-02 -1.4114E-01 -5.1504E-01  3.3758E-01  1.0008E+00  5.1285E-02  1.3488E+00  1.2948E+00  8.2296E-01
             1.3068E+00  1.2844E+00
 GRADIENT:  -2.5077E-02 -4.6452E+00  8.3870E-01  1.0444E+00  7.9526E+00 -4.9905E+00 -2.9444E+00  7.5678E-01  8.8186E-02 -2.1544E+00
            -5.0003E-01  8.4897E+00

0ITERATION NO.:   52    OBJECTIVE VALUE:   3145.34789266001        NO. OF FUNC. EVALS.:  28
 CUMULATIVE NO. OF FUNC. EVALS.:      844
 NPARAMETR:  5.7305E+01  8.5548E+01  1.1393E+01  3.6113E+02  6.0997E-01  5.0047E+01  2.5586E-01  4.8522E-01  4.3640E-01  1.6984E-01
             4.4698E-02  4.2711E-01
 PARAMETER: -4.9601E-01 -7.5899E-02 -1.4114E-01 -5.1505E-01  3.3755E-01  1.0009E+00  5.1173E-02  1.3479E+00  1.2948E+00  8.2299E-01
             1.3068E+00  1.2841E+00
 GRADIENT:  -5.6309E+02  5.5811E+03  1.9783E+03 -1.0806E+03  8.3436E+02  5.5235E+02 -2.7958E+03 -4.1365E+02  2.1588E+02  6.7689E+02
            -2.1337E+02 -4.2777E+02

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:      844
 NO. OF SIG. DIGITS IN FINAL EST.:  3.3

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -4.4370E-04  1.2295E-01 -2.6245E-02 -9.3086E-04
 SE:             1.9017E-01  1.5604E-01  1.1375E-01  4.8440E-02
 N:                      12          12          12          12

 P VAL.:         9.9814E-01  4.3074E-01  8.1753E-01  9.8467E-01

 ETAshrink(%):   1.2246E+00  1.4536E+01  1.3464E-01  1.7101E+01
 EBVshrink(%):   2.7232E+00  1.3727E+01  1.2168E+01  2.4656E+01
 EPSshrink(%):   3.6649E+00

 #TERE:
 Elapsed estimation time in seconds:    14.47
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance time in seconds:     6.85
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************     3145.348       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7     
 
         5.73E+01  8.55E+01  1.14E+01  3.61E+02  6.10E-01  5.00E+01  2.56E-01
 


 OMEGA - COV MATRIX FOR RANDOM EFFECTS - ETAS  ********


            ETA1      ETA2      ETA3      ETA4   
 
 ETA1
+        4.85E-01
 
 ETA2
+        0.00E+00  4.36E-01
 
 ETA3
+        0.00E+00  0.00E+00  1.70E-01
 
 ETA4
+        0.00E+00  0.00E+00  0.00E+00  4.47E-02
 


 SIGMA - COV MATRIX FOR RANDOM EFFECTS - EPSILONS  ****


            EPS1   
 
 EPS1
+        4.27E-01
 
1


 OMEGA - CORR MATRIX FOR RANDOM EFFECTS - ETAS  *******


            ETA1      ETA2      ETA3      ETA4   
 
 ETA1
+        6.97E-01
 
 ETA2
+        0.00E+00  6.61E-01
 
 ETA3
+        0.00E+00  0.00E+00  4.12E-01
 
 ETA4
+        0.00E+00  0.00E+00  0.00E+00  2.11E-01
 


 SIGMA - CORR MATRIX FOR RANDOM EFFECTS - EPSILONS  ***


            EPS1   
 
 EPS1
+        6.54E-01
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                                     R MATRIX                                   ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      OM11      OM12      OM13      OM14      OM22  
             OM23      OM24      OM33      OM34      OM44      SG11  
 
 TH 1
+        1.73E+02
 
 TH 2
+        3.84E-02  1.91E+03
 
 TH 3
+        1.18E-01 -7.64E-01  5.39E+04
 
 TH 4
+       -1.21E-03  8.09E-03  7.18E-01  4.01E+00
 
 TH 5
+        1.14E+00 -8.18E+00 -6.69E+02  2.11E+01  3.29E+06
 
 TH 6
+        5.59E-03 -2.94E-02 -2.67E+00  4.57E-02 -4.24E+01  5.56E+01
 
 TH 7
+        6.82E-01 -3.26E+04 -2.69E+00  3.10E-02 -1.32E+01  2.45E-02  5.59E+05
 
 OM11
+       -5.11E-01  1.76E+00  9.58E+00 -1.00E-01  8.52E+01  3.35E-01 -5.58E+01  9.51E+00
 
 OM12
+       ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM14
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM22
+       -3.92E+00  1.30E+01  6.70E+01 -5.32E-01  4.56E+02  1.97E+00 -2.21E+02 -8.60E+01 ......... ......... .........  1.11E+02
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         .........
 
 OM24
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... .........
 
 OM33
+       -2.63E+01  8.54E+01  3.91E+02 -1.92E+00  1.16E+03  8.23E+00 -1.50E+03 -5.64E+02 ......... ......... .........  5.94E+02
         ......... .........  9.50E+02
 
 OM34
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... .........
 
 OM44
+       -3.12E+02  1.04E+03  5.69E+03 -5.27E+01  4.84E+04  1.93E+02 -1.77E+04 -6.81E+03 ......... ......... .........  8.00E+03
         ......... .........  3.60E+04 ......... -8.48E+04
 
 SG11
+       -5.22E-01  1.39E+00  1.25E+02 -3.98E+00 -2.58E+03  6.87E+00 -3.36E+01 -8.65E+00 ......... ......... ......... -8.81E+01
         ......... ......... -1.88E+03 .........  4.62E+03  1.17E+05
 
 #CPUT: Total CPU Time in Seconds,       20.938
Stop Time: 
Sun 01/15/2017 
08:19 PM
