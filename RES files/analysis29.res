Sun 01/15/2017 
08:13 PM
;Model Desc: basic two cmt additive shift trt cl linear weight cl random vc cl q
;Project Name: raltest
;Project ID: NO PROJECT DESCRIPTION

;Project ID: NO PROJECT DESCRIPTION
 
$PROB RUN# analysis29
$INPUT C ID TREAT TIME DV AMT EVID sex race weight height age HC
$DATA RAL_FOR_NONMEM.CSV IGNORE=C
$SUBROUTINES ADVAN4 TRANS4
$PK
   TVCL=THETA(1)
   CL=TVCL*EXP(ETA(1))+THETA(6)*TREAT
   TVV2=THETA(2)
   V2=TVV2*EXP(ETA(2))*(weight**THETA(7))
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
 
$EST METHOD=1 INTERACTION PRINT=5 MAX=9999 SIG=3    MSFO=analysis29.msf 
$THETA 
  (0, 104);[CL]
  (0, 102);[V2]
  (0, 14.5);[Q]
  (0, 668);[V3]
  (0, 0.481);[KA]
  5;[trt]
  0.1;[wt]
$OMEGA
  0.04 ;[P] omega(1,1)
  0.04 ;[P] omega(2,2)
  0.04 ;[P] omega(3,3)
  0.04 ;[P] omega(4,4)
$SIGMA
  0.04 ;[P] sigma(1,1)
$COV
$TABLE ID TIME ONEHEADER NOPRINT FILE=analysis29.tab

  
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
 RUN# analysis29
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   5318.76543251141        NO. OF FUNC. EVALS.:  10
 CUMULATIVE NO. OF FUNC. EVALS.:       10
 NPARAMETR:  1.0400E+02  1.0200E+02  1.4500E+01  6.6800E+02  4.8100E-01  5.0000E+00  1.0000E-01  4.0000E-02  4.0000E-02  4.0000E-02
             4.0000E-02  4.0000E-02
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01  1.0000E-01
 GRADIENT:   2.3501E+02  2.5422E+02  8.3629E+01  6.9570E+01 -1.5412E+02 -1.3533E+03  1.0559E+03 -2.5420E+02 -1.5421E+02 -2.7241E+02
            -5.0579E+01 -4.6410E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:   3218.46546329880        NO. OF FUNC. EVALS.:  12
 CUMULATIVE NO. OF FUNC. EVALS.:       66
 NPARAMETR:  1.0617E+02  9.9548E+01  1.3407E+01  5.5757E+02  5.6186E-01  9.6605E+01  3.1381E-02  2.5746E-01  5.4052E-02  9.6812E-02
             3.9020E-02  8.9744E-01
 PARAMETER:  1.2067E-01  7.5671E-02  2.1600E-02 -8.0693E-02  2.5539E-01  1.9321E+00  3.1381E-02  1.0310E+00  2.5053E-01  5.4195E-01
             8.7591E-02  1.6553E+00
 GRADIENT:   2.0109E+01 -7.6750E+00 -3.0015E+01  1.8285E+01  3.5996E+01  8.5444E+01 -3.6801E+01 -3.0396E+00 -9.7395E+00 -1.0442E+01
             1.3589E+00  2.5146E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:   3187.23943489162        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:      124
 NPARAMETR:  7.6663E+01  8.3123E+01  5.9047E+00  3.8351E+02  5.6550E-01  6.6612E+01  1.1528E-02  1.8076E+00  3.6592E-01  1.7734E+00
             1.4443E-02  5.7557E-01
 PARAMETER: -2.0497E-01 -1.0465E-01 -7.9840E-01 -4.5493E-01  2.6183E-01  1.3322E+00  1.1528E-02  2.0054E+00  1.2068E+00  1.9959E+00
            -4.0934E-01  1.4332E+00
 GRADIENT:  -1.6444E-01 -6.9978E+00 -1.0327E+01 -5.9259E+00 -7.1905E+00  4.5243E+01 -3.0891E+01  2.0063E+01 -2.6513E+00  1.2070E+01
             2.3530E-01  5.6063E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:   3148.32401297324        NO. OF FUNC. EVALS.:  11
 CUMULATIVE NO. OF FUNC. EVALS.:      182
 NPARAMETR:  6.9402E+01  3.8637E+01  1.2104E+01  3.3705E+02  6.8630E-01  4.7758E+01  2.8009E-01  3.4353E-01  4.2657E-01  4.8314E-01
             9.9385E-03  4.8400E-01
 PARAMETER: -3.0448E-01 -8.7075E-01 -8.0602E-02 -5.8406E-01  4.5544E-01  9.5517E-01  2.8009E-01  1.1752E+00  1.2834E+00  1.3457E+00
            -5.9623E-01  1.3466E+00
 GRADIENT:  -8.6696E+00  3.4812E+00 -8.1340E-01 -2.0367E+00  2.4670E+00 -1.5271E+01  1.4012E+01  3.9853E+00  2.2643E+00  1.1098E+01
             1.7355E+00  5.1664E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:   3141.41345039110        NO. OF FUNC. EVALS.:  11
 CUMULATIVE NO. OF FUNC. EVALS.:      237
 NPARAMETR:  7.6924E+01  3.4505E+00  1.1877E+01  3.2383E+02  6.4028E-01  4.9978E+01  8.1114E-01  2.4027E-01  3.9181E-01  2.0206E-01
             2.1421E-03  4.2504E-01
 PARAMETER: -2.0158E-01 -3.2865E+00 -9.9519E-02 -6.2407E-01  3.8604E-01  9.9956E-01  8.1114E-01  9.9644E-01  1.2410E+00  9.0984E-01
            -1.3636E+00  1.2817E+00
 GRADIENT:   1.0099E+00 -3.2219E-01  6.1693E-01 -8.9769E-01 -6.3858E+00 -1.9252E+00 -2.0111E+00 -2.0000E+00  4.7699E-01 -2.8771E-01
             6.1026E-01  1.5444E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:   3140.85798646024        NO. OF FUNC. EVALS.:  11
 CUMULATIVE NO. OF FUNC. EVALS.:      295
 NPARAMETR:  7.6597E+01  1.0258E+00  1.1931E+01  3.2994E+02  6.4627E-01  5.0088E+01  1.1061E+00  2.6488E-01  3.5714E-01  2.1259E-01
             1.0279E-03  4.2566E-01
 PARAMETER: -2.0584E-01 -4.4995E+00 -9.5047E-02 -6.0537E-01  3.9534E-01  1.0018E+00  1.1061E+00  1.0452E+00  1.1946E+00  9.3525E-01
            -1.7307E+00  1.2824E+00
 GRADIENT:   5.5416E-01 -1.6186E-01  2.9110E-02  2.8098E-01 -6.4055E-01 -1.3667E-01 -1.0173E+00  3.6719E-02 -8.0545E-02  4.1040E-01
             2.9606E-01  1.8880E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:   3140.75072116086        NO. OF FUNC. EVALS.:  11
 CUMULATIVE NO. OF FUNC. EVALS.:      352
 NPARAMETR:  7.5953E+01  1.0681E+00  1.1876E+01  3.2641E+02  6.4768E-01  5.0017E+01  1.0935E+00  2.6475E-01  3.7162E-01  2.0660E-01
             6.1976E-05  4.2301E-01
 PARAMETER: -2.1428E-01 -4.4591E+00 -9.9651E-02 -6.1612E-01  3.9752E-01  1.0003E+00  1.0935E+00  1.0449E+00  1.2145E+00  9.2095E-01
            -3.1349E+00  1.2793E+00
 GRADIENT:   8.8098E-02 -3.8270E-01  1.3760E-01  3.5652E-02  5.0870E-01  7.3321E-02 -1.9550E+00  4.7330E-02  4.5256E-02  9.6242E-02
             1.8725E-02  4.3479E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:   3140.63624573352        NO. OF FUNC. EVALS.:  19
 CUMULATIVE NO. OF FUNC. EVALS.:      443
 NPARAMETR:  7.6875E+01  1.1409E+00  1.1986E+01  3.3005E+02  6.5296E-01  5.0074E+01  1.0963E+00  2.6382E-01  3.4162E-01  2.0643E-01
             4.0000E-06  4.2692E-01
 PARAMETER: -2.0221E-01 -4.3932E+00 -9.0411E-02 -6.0504E-01  4.0564E-01  1.0015E+00  1.0963E+00  1.0432E+00  1.1724E+00  9.2054E-01
            -4.7426E+00  1.2839E+00
 GRADIENT:   1.2048E-01  1.1960E-01 -8.6773E-02  1.1078E-01  1.1152E-01 -6.3286E-02 -3.0264E-01  2.4194E-02 -1.9344E-02 -1.9914E-02
             0.0000E+00  3.7944E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:   3140.61885255031        NO. OF FUNC. EVALS.:  19
 CUMULATIVE NO. OF FUNC. EVALS.:      563
 NPARAMETR:  7.6867E+01  1.0200E+00  1.1980E+01  3.2988E+02  6.5308E-01  5.0089E+01  1.1239E+00  2.6395E-01  3.4078E-01  2.0609E-01
             2.9961E-05  4.2687E-01
 PARAMETER: -2.0231E-01 -4.5079E+00 -9.0951E-02 -6.0556E-01  4.0583E-01  1.0018E+00  1.1239E+00  1.0434E+00  1.1712E+00  9.1973E-01
            -3.4984E+00  1.2838E+00
 GRADIENT:   1.1110E-01  2.3361E-01 -1.3916E-01  9.7745E-02  3.1733E-02  1.3516E-02  3.2510E-01  3.3025E-02  2.2238E-02 -3.3275E-02
             8.3725E-03  2.4285E-01

0ITERATION NO.:   45    OBJECTIVE VALUE:   3140.61491206028        NO. OF FUNC. EVALS.:  19
 CUMULATIVE NO. OF FUNC. EVALS.:      659
 NPARAMETR:  7.6749E+01  1.0200E+00  1.1983E+01  3.2948E+02  6.5283E-01  5.0073E+01  1.1230E+00  2.6357E-01  3.4147E-01  2.0629E-01
             4.0000E-06  4.2629E-01
 PARAMETER: -2.0384E-01 -4.5143E+00 -9.0676E-02 -6.0676E-01  4.0544E-01  1.0015E+00  1.1230E+00  1.0427E+00  1.1722E+00  9.2019E-01
            -4.6080E+00  1.2831E+00
 GRADIENT:   2.0559E-02  0.0000E+00 -1.5571E-02  1.1180E-03 -4.3107E-02 -1.3937E-02 -2.2494E-01  1.1906E-03  3.9203E-03 -4.5517E-03
             0.0000E+00 -6.9709E-02

0ITERATION NO.:   50    OBJECTIVE VALUE:   3140.61486275744        NO. OF FUNC. EVALS.:  17
 CUMULATIVE NO. OF FUNC. EVALS.:      760
 NPARAMETR:  7.6739E+01  1.0200E+00  1.1986E+01  3.2948E+02  6.5293E-01  5.0077E+01  1.1233E+00  2.6353E-01  3.4121E-01  2.0633E-01
             4.0000E-06  4.2638E-01
 PARAMETER: -2.0398E-01 -4.5145E+00 -9.0420E-02 -6.0676E-01  4.0560E-01  1.0015E+00  1.1233E+00  1.0427E+00  1.1718E+00  9.2030E-01
            -4.5113E+00  1.2832E+00
 GRADIENT:  -7.4386E-04  0.0000E+00 -3.0116E-03 -1.2983E-02 -5.1115E-02 -1.5658E-03 -5.7006E-03 -2.0261E-04  6.9209E-03  1.3917E-03
             0.0000E+00 -2.4583E-02

0ITERATION NO.:   51    OBJECTIVE VALUE:   3140.61486275744        NO. OF FUNC. EVALS.:  16
 CUMULATIVE NO. OF FUNC. EVALS.:      776
 NPARAMETR:  7.6739E+01  1.0200E+00  1.1986E+01  3.2948E+02  6.5293E-01  5.0077E+01  1.1233E+00  2.6353E-01  3.4121E-01  2.0633E-01
             4.0000E-06  4.2638E-01
 PARAMETER: -2.0398E-01 -4.5145E+00 -9.0420E-02 -6.0676E-01  4.0560E-01  1.0015E+00  1.1233E+00  1.0427E+00  1.1718E+00  9.2030E-01
            -4.5113E+00  1.2832E+00
 GRADIENT:  -7.4386E-04  0.0000E+00 -3.0116E-03 -1.2983E-02 -5.1115E-02 -1.5658E-03 -5.7006E-03 -2.0261E-04  6.9209E-03  1.3917E-03
             0.0000E+00 -2.4583E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      776
 NO. OF SIG. DIGITS IN FINAL EST.:  3.6
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.1948E-03  2.7239E-02 -1.7117E-02  5.2186E-06
 SE:             1.4447E-01  1.4676E-01  1.2051E-01  5.2197E-06
 N:                      12          12          12          12

 P VAL.:         9.9340E-01  8.5276E-01  8.8706E-01  3.1741E-01

 ETAshrink(%):   1.0000E-10  9.0928E+00  4.0064E+00  9.9056E+01
 EBVshrink(%):   2.4162E+00  8.8002E+00  1.0319E+01  9.8926E+01
 EPSshrink(%):   2.6525E+00

 #TERE:
 Elapsed estimation time in seconds:     6.59
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************     3140.615       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7     
 
         7.67E+01  1.02E+00  1.20E+01  3.29E+02  6.53E-01  5.01E+01  1.12E+00
 


 OMEGA - COV MATRIX FOR RANDOM EFFECTS - ETAS  ********


            ETA1      ETA2      ETA3      ETA4   
 
 ETA1
+        2.64E-01
 
 ETA2
+        0.00E+00  3.41E-01
 
 ETA3
+        0.00E+00  0.00E+00  2.06E-01
 
 ETA4
+        0.00E+00  0.00E+00  0.00E+00  4.00E-06
 


 SIGMA - COV MATRIX FOR RANDOM EFFECTS - EPSILONS  ****


            EPS1   
 
 EPS1
+        4.26E-01
 
1


 OMEGA - CORR MATRIX FOR RANDOM EFFECTS - ETAS  *******


            ETA1      ETA2      ETA3      ETA4   
 
 ETA1
+        5.13E-01
 
 ETA2
+        0.00E+00  5.84E-01
 
 ETA3
+        0.00E+00  0.00E+00  4.54E-01
 
 ETA4
+        0.00E+00  0.00E+00  0.00E+00  2.00E-03
 


 SIGMA - CORR MATRIX FOR RANDOM EFFECTS - EPSILONS  ***


            EPS1   
 
 EPS1
+        6.53E-01
 
 #CPUT: Total CPU Time in Seconds,        6.266
Stop Time: 
Sun 01/15/2017 
08:13 PM