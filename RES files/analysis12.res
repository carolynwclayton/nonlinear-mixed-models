Sun 01/15/2017 
06:07 PM
;Model Desc: basic two cmt additive shift trt cl random vc cl q
;Project Name: raltest
;Project ID: NO PROJECT DESCRIPTION

;Project ID: NO PROJECT DESCRIPTION
 
$PROB RUN# analysis12
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
   KA=TVKA*EXP(ETA(4))+THETA(6)*TREAT
   S2=V2
 
$ERROR
   Y = F + F*ERR(1)
 IPRE=F
 W1= 1
 W2= F
 IRES= DV-IPRE
 IWRE=IRES/(W1+W2)
 
$EST METHOD=1 INTERACTION PRINT=5 MAX=9999 SIG=3    MSFO=analysis12.msf 
$THETA 
  (0, 104);[CL]
  (0, 102);[V2]
  (0, 14.5);[Q]
  (0, 668);[V3]
  (0, 0.481);[KA]
  0.1;[trt]
$OMEGA
  0.04 ;[P] omega(1,1)
  0.04 ;[P] omega(2,2)
  0.04 ;[P] omega(3,3)
  0.04 ;[P] omega(4,4)
$SIGMA
  0.04 ;[P] sigma(1,1)
$COV
$TABLE ID TIME IPRE ONEHEADER NOPRINT FILE=analysis12.tab
$TABLE ID TIME CL V2 Q V3 KA ONEHEADER NOPRINT FILE=PATABanalysis12
$TABLE ID ONEHEADER NOPRINT FILE=COTABanalysis12
$TABLE ID ONEHEADER NOPRINT FILE=CATABanalysis12
$TABLE ID IPRE ONEHEADER NOPRINT FILE=SDTABanalysis12
$TABLE ID CL V2 Q V3 KA FIRSTONLY NOAPPEND NOPRINT FILE=analysis12.par
$TABLE ID ETA1 ETA2 ETA3 FIRSTONLY NOAPPEND NOPRINT FILE=analysis12.eta
$SCAT DV VS PRED UNIT
$SCAT WRES VS PRED


  
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
 RUN# analysis12
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
0(NONBLANK) LABELS FOR PRED-DEFINED ITEMS:
 CL V2 Q V3 KA IPRE
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
 NO. OF TABLES:           7
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
 ID TIME IPRE
0-- TABLE   2 --
 PRINTED:                NO
 HEADER:                YES
 FILE TO BE FORWARDED:   NO
 FORMAT:                S1PE11.4
 LFORMAT:
 RFORMAT:
0USER-CHOSEN ITEMS:
 ID TIME CL V2 Q V3 KA
0-- TABLE   3 --
 PRINTED:                NO
 HEADER:                YES
 FILE TO BE FORWARDED:   NO
 FORMAT:                S1PE11.4
 LFORMAT:
 RFORMAT:
0USER-CHOSEN ITEMS:
 ID
0-- TABLE   4 --
 PRINTED:                NO
 HEADER:                YES
 FILE TO BE FORWARDED:   NO
 FORMAT:                S1PE11.4
 LFORMAT:
 RFORMAT:
0USER-CHOSEN ITEMS:
 ID
0-- TABLE   5 --
 PRINTED:                NO
 HEADER:                YES
 FILE TO BE FORWARDED:   NO
 FORMAT:                S1PE11.4
 LFORMAT:
 RFORMAT:
0USER-CHOSEN ITEMS:
 ID IPRE
0-- TABLE   6 --
0FIRST RECORDS ONLY:    YES
04 COLUMNS APPENDED:     NO
 PRINTED:                NO
 HEADER:                YES
 FILE TO BE FORWARDED:   NO
 FORMAT:                S1PE11.4
 LFORMAT:
 RFORMAT:
0USER-CHOSEN ITEMS:
 ID CL V2 Q V3 KA
0-- TABLE   7 --
0FIRST RECORDS ONLY:    YES
04 COLUMNS APPENDED:     NO
 PRINTED:                NO
 HEADER:                YES
 FILE TO BE FORWARDED:   NO
 FORMAT:                S1PE11.4
 LFORMAT:
 RFORMAT:
0USER-CHOSEN ITEMS:
 ID ETA1 ETA2 ETA3
0SCATTERPLOT STEP OMITTED:    NO
 FAMILIES OF SCATTERPLOTS:     2
0-- SCATTERPLOT   1 --
 UNIT SLOPE LINE:            YES
0ITEMS TO BE SCATTERED:    PRED    DV
0-- SCATTERPLOT   2 --
 UNIT SLOPE LINE:             NO
0ITEMS TO BE SCATTERED:    PRED    WRES
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   5203.65300234004        NO. OF FUNC. EVALS.:   9
 CUMULATIVE NO. OF FUNC. EVALS.:        9
 NPARAMETR:  1.0400E+02  1.0200E+02  1.4500E+01  6.6800E+02  4.8100E-01  1.0000E-01  4.0000E-02  4.0000E-02  4.0000E-02  4.0000E-02
             4.0000E-02
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   2.0965E+02  1.3241E+02  1.1341E+02  2.3323E+00 -6.1225E+00 -1.5111E+03 -2.4033E+02 -7.5363E+01 -2.1467E+02 -6.5848E+00
            -4.6057E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:   3431.16334113395        NO. OF FUNC. EVALS.:  10
 CUMULATIVE NO. OF FUNC. EVALS.:       59
 NPARAMETR:  1.5465E+02  1.3571E+02  2.2406E+01  5.7265E+02  2.8464E-01  3.0208E-01  4.1067E-01  7.0973E-02  1.6175E-01  4.2562E-02
             8.8992E+00
 PARAMETER:  4.9679E-01  3.8552E-01  5.3518E-01 -5.4016E-02 -4.2464E-01  3.0208E-01  1.2645E+00  3.8671E-01  7.9860E-01  1.3104E-01
             2.8024E+00
 GRADIENT:  -2.8078E+01 -1.2883E+01  8.3638E+00 -4.4687E+01 -1.8953E+01 -4.0461E+01 -2.9856E+00 -1.0797E+00 -4.6049E+00 -1.2526E+01
             1.8572E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:   3318.35917417741        NO. OF FUNC. EVALS.:  10
 CUMULATIVE NO. OF FUNC. EVALS.:      112
 NPARAMETR:  5.5627E+00  1.9838E+02  1.2073E+01  6.5837E+02  1.0491E-01  7.1173E-01  1.8750E+03  1.0906E+01  2.2027E+00  2.3331E+00
             6.8977E-01
 PARAMETER: -2.8283E+00  7.6522E-01 -8.3194E-02  8.5484E-02 -1.4227E+00  7.1173E-01  5.4776E+00  2.9041E+00  2.1043E+00  2.1330E+00
             1.5237E+00
 GRADIENT:   7.5123E+00  1.9213E+00 -8.1813E-01  3.6447E+00 -8.0938E+00  9.0935E+00  2.3879E+01  1.7210E+01  1.7042E+01  1.2619E+01
             1.1375E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:   3227.79849947734        NO. OF FUNC. EVALS.:  12
 CUMULATIVE NO. OF FUNC. EVALS.:      166
 NPARAMETR:  1.1957E+01  5.4337E+01  7.1414E+00  3.8737E+02  3.6960E-01  5.0295E-01  4.7308E+00  2.9671E+00  9.1709E-01  3.3486E-02
             4.4137E-01
 PARAMETER: -2.0631E+00 -5.2977E-01 -6.0824E-01 -4.4491E-01 -1.6344E-01  5.0295E-01  2.4865E+00  2.2532E+00  1.6662E+00  1.1125E-02
             1.3005E+00
 GRADIENT:  -4.4354E+00 -2.0502E+00 -1.2542E+01 -2.6564E+01 -5.3513E+00 -4.8787E+01 -8.7264E-02  5.2956E+00  5.1841E+00  1.4490E+00
             1.3979E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:   3199.75209543341        NO. OF FUNC. EVALS.:  10
 CUMULATIVE NO. OF FUNC. EVALS.:      219
 NPARAMETR:  1.5924E+01  1.2916E+02  1.5304E+01  6.6115E+02  3.1047E-01  6.9106E-01  3.8318E+00  6.3651E-01  4.9587E-01  1.2870E-01
             4.3878E-01
 PARAMETER: -1.7766E+00  3.3610E-01  1.5399E-01  8.9690E-02 -3.3777E-01  6.9106E-01  2.3811E+00  1.4836E+00  1.3587E+00  6.8430E-01
             1.2976E+00
 GRADIENT:  -6.2144E+00  3.2821E-01  7.8295E-01 -1.9255E+00 -7.6298E-01 -9.8424E+00 -4.4558E-01 -2.2575E+00  4.3064E-01  1.4784E+00
             1.0720E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:   3173.47663801145        NO. OF FUNC. EVALS.:  17
 CUMULATIVE NO. OF FUNC. EVALS.:      278
 NPARAMETR:  9.5090E+01  1.4562E+02  1.8316E+01  6.3012E+02  3.1299E-01  9.0141E-01  3.2162E-01  5.7367E-01  5.3311E-01  1.1910E-01
             4.4746E-01
 PARAMETER:  1.0428E-02  4.5604E-01  3.3365E-01  4.1615E-02 -3.2969E-01  9.0141E-01  1.1422E+00  1.4316E+00  1.3949E+00  6.4555E-01
             1.3074E+00
 GRADIENT:  -6.7939E+00 -6.2176E-01  8.8657E+00 -5.8577E+00 -3.1939E+00  6.3128E+00 -3.7402E+00 -1.4963E+00  2.7029E-02  4.8362E-01
             1.3202E+01

0ITERATION NO.:   30    OBJECTIVE VALUE:   3171.55568302332        NO. OF FUNC. EVALS.:  10
 CUMULATIVE NO. OF FUNC. EVALS.:      328
 NPARAMETR:  1.0301E+02  1.4136E+02  1.4921E+01  6.6925E+02  3.2358E-01  8.3495E-01  3.6533E-01  6.4214E-01  4.9879E-01  1.1308E-01
             4.3383E-01
 PARAMETER:  9.0421E-02  4.2633E-01  1.2860E-01  1.0186E-01 -2.9642E-01  8.3495E-01  1.2060E+00  1.4880E+00  1.3617E+00  6.1961E-01
             1.2919E+00
 GRADIENT:  -8.5912E-02 -2.2402E-01 -7.0126E-01  4.0582E-01  1.6224E+00  2.9361E+00 -5.6312E-01  8.9060E-03  1.2525E-01  5.8110E-01
             2.7451E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:   3171.47500390319        NO. OF FUNC. EVALS.:  10
 CUMULATIVE NO. OF FUNC. EVALS.:      378
 NPARAMETR:  1.0310E+02  1.3779E+02  1.5133E+01  6.6497E+02  3.1866E-01  7.8943E-01  3.7578E-01  6.5302E-01  4.9146E-01  1.1018E-01
             4.3158E-01
 PARAMETER:  9.1336E-02  4.0074E-01  1.4270E-01  9.5450E-02 -3.1175E-01  7.8943E-01  1.2201E+00  1.4964E+00  1.3543E+00  6.0660E-01
             1.2893E+00
 GRADIENT:  -9.5453E-03 -4.8876E-02  3.1155E-03 -3.4080E-02 -9.7092E-03  1.2736E-01  4.1975E-03 -1.2278E-02  5.3469E-02 -1.9887E-02
             2.1556E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:   3171.46996227245        NO. OF FUNC. EVALS.:  14
 CUMULATIVE NO. OF FUNC. EVALS.:      462
 NPARAMETR:  1.0377E+02  1.3998E+02  1.5193E+01  6.6746E+02  3.1949E-01  7.9358E-01  3.7543E-01  6.5107E-01  4.9078E-01  1.0968E-01
             4.3295E-01
 PARAMETER:  9.7793E-02  4.1652E-01  1.4671E-01  9.9191E-02 -3.0915E-01  7.9358E-01  1.2196E+00  1.4949E+00  1.3536E+00  6.0435E-01
             1.2909E+00
 GRADIENT:  -3.1416E-03  2.0336E-03 -1.4782E-05  1.4090E-03  1.8714E-03  6.4848E-04 -1.1552E-03 -2.6564E-04  9.1000E-04  4.2713E-05
             1.6156E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      462
 NO. OF SIG. DIGITS IN FINAL EST.:  3.3

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -6.0153E-03  9.3296E-03 -3.5108E-02  7.1369E-03
 SE:             1.7388E-01  2.1831E-01  1.9361E-01  8.4692E-02
 N:                      12          12          12          12

 P VAL.:         9.7240E-01  9.6591E-01  8.5611E-01  9.3284E-01

 ETAshrink(%):   1.0000E-10  2.1078E+00  6.1120E-03  7.4751E+00
 EBVshrink(%):   1.4740E+00  3.8748E+00  4.5757E+00  1.1945E+01
 EPSshrink(%):   3.8528E+00

 #TERE:
 Elapsed estimation time in seconds:     5.64
 Elapsed covariance time in seconds:     4.60
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************     3171.470       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6     
 
         1.04E+02  1.40E+02  1.52E+01  6.67E+02  3.19E-01  7.94E-01
 


 OMEGA - COV MATRIX FOR RANDOM EFFECTS - ETAS  ********


            ETA1      ETA2      ETA3      ETA4   
 
 ETA1
+        3.75E-01
 
 ETA2
+        0.00E+00  6.51E-01
 
 ETA3
+        0.00E+00  0.00E+00  4.91E-01
 
 ETA4
+        0.00E+00  0.00E+00  0.00E+00  1.10E-01
 


 SIGMA - COV MATRIX FOR RANDOM EFFECTS - EPSILONS  ****


            EPS1   
 
 EPS1
+        4.33E-01
 
1


 OMEGA - CORR MATRIX FOR RANDOM EFFECTS - ETAS  *******


            ETA1      ETA2      ETA3      ETA4   
 
 ETA1
+        6.13E-01
 
 ETA2
+        0.00E+00  8.07E-01
 
 ETA3
+        0.00E+00  0.00E+00  7.01E-01
 
 ETA4
+        0.00E+00  0.00E+00  0.00E+00  3.31E-01
 


 SIGMA - CORR MATRIX FOR RANDOM EFFECTS - EPSILONS  ***


            EPS1   
 
 EPS1
+        6.58E-01
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                            STANDARD ERROR OF ESTIMATE                          ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6     
 
         1.83E+01  3.90E+01  3.99E+00  1.79E+02  5.15E-02  2.71E-01
 


 OMEGA - COV MATRIX FOR RANDOM EFFECTS - ETAS  ********


            ETA1      ETA2      ETA3      ETA4   
 
 ETA1
+        1.31E-01
 
 ETA2
+       .........  2.44E-01
 
 ETA3
+       ......... .........  1.61E-01
 
 ETA4
+       ......... ......... .........  5.38E-02
 


 SIGMA - COV MATRIX FOR RANDOM EFFECTS - EPSILONS  ****


            EPS1   
 
 EPS1
+        6.11E-02
 
1


 OMEGA - CORR MATRIX FOR RANDOM EFFECTS - ETAS  *******


            ETA1      ETA2      ETA3      ETA4   
 
 ETA1
+        1.07E-01
 
 ETA2
+       .........  1.51E-01
 
 ETA3
+       ......... .........  1.15E-01
 
 ETA4
+       ......... ......... .........  8.12E-02
 


 SIGMA - CORR MATRIX FOR RANDOM EFFECTS - EPSILONS  ***


            EPS1   
 
 EPS1
+        4.65E-02
 
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
+        3.36E+02
 
 TH 2
+        2.07E+02  1.52E+03
 
 TH 3
+        4.33E+01  3.03E+01  1.59E+01
 
 TH 4
+       -2.31E+02  1.46E+03  3.98E+02  3.20E+04
 
 TH 5
+       -5.20E-01 -9.86E-02 -3.61E-02  1.11E+00  2.65E-03
 
 TH 6
+       -3.01E+00  4.67E+00 -3.02E-01  7.82E+00  7.85E-03  7.37E-02
 
 OM11
+       -7.80E-01 -2.88E+00 -8.06E-02  5.12E+00  2.00E-03 -7.63E-03  1.72E-02
 
 OM12
+       ......... ......... ......... ......... ......... ......... ......... .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM14
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM22
+       -1.94E+00 -5.62E+00 -3.42E-01  3.66E+00  6.39E-03  3.92E-03  2.19E-02 ......... ......... .........  5.96E-02
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM24
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         .........
 
 OM33
+       -8.21E-01 -3.79E+00  9.85E-02  8.22E+00  1.72E-03 -1.09E-02  1.82E-02 ......... ......... .........  1.70E-02 .........
         .........  2.59E-02
 
 OM34
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... .........
 
 OM44
+       -5.55E-02 -1.08E+00 -8.09E-02 -6.40E+00 -1.27E-03 -4.76E-03 -8.21E-04 ......... ......... ......... -1.52E-03 .........
         ......... -2.62E-04 .........  2.89E-03
 
 SG11
+       -5.17E-01  2.06E-01 -8.22E-02  4.60E+00  6.71E-04  2.19E-03  2.60E-03 ......... ......... .........  3.65E-03 .........
         .........  9.79E-04 ......... -1.45E-03  3.74E-03
 
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
+        1.83E+01
 
 TH 2
+        2.90E-01  3.90E+01
 
 TH 3
+        5.93E-01  1.95E-01  3.99E+00
 
 TH 4
+       -7.05E-02  2.10E-01  5.58E-01  1.79E+02
 
 TH 5
+       -5.51E-01 -4.91E-02 -1.76E-01  1.21E-01  5.15E-02
 
 TH 6
+       -6.04E-01  4.41E-01 -2.79E-01  1.61E-01  5.62E-01  2.71E-01
 
 OM11
+       -3.24E-01 -5.62E-01 -1.54E-01  2.18E-01  2.96E-01 -2.14E-01  1.31E-01
 
 OM12
+       ......... ......... ......... ......... ......... ......... ......... .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM14
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM22
+       -4.34E-01 -5.90E-01 -3.52E-01  8.38E-02  5.09E-01  5.92E-02  6.84E-01 ......... ......... .........  2.44E-01
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM24
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         .........
 
 OM33
+       -2.78E-01 -6.03E-01  1.53E-01  2.86E-01  2.07E-01 -2.50E-01  8.60E-01 ......... ......... .........  4.34E-01 .........
         .........  1.61E-01
 
 OM34
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... .........
 
 OM44
+       -5.64E-02 -5.13E-01 -3.77E-01 -6.66E-01 -4.60E-01 -3.26E-01 -1.16E-01 ......... ......... ......... -1.16E-01 .........
         ......... -3.02E-02 .........  5.38E-02
 
 SG11
+       -4.62E-01  8.63E-02 -3.37E-01  4.21E-01  2.13E-01  1.32E-01  3.25E-01 ......... ......... .........  2.45E-01 .........
         .........  9.95E-02 ......... -4.41E-01  6.11E-02
 
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
+        3.95E+00
 
 TH 2
+       -4.96E-01  7.27E-02
 
 TH 3
+        2.07E+01 -2.50E+00  1.19E+02
 
 TH 4
+       -2.88E-01  3.49E-02 -1.66E+00  2.32E-02
 
 TH 5
+        4.45E+01 -5.02E+00  1.34E+02 -1.66E+00  3.06E+03
 
 TH 6
+        3.58E+02 -4.48E+01  1.95E+03 -2.72E+01  3.13E+03  3.30E+04
 
 OM11
+        2.25E+02 -2.86E+01  1.32E+03 -1.84E+01  1.08E+03  2.15E+04  1.58E+04
 
 OM12
+       ......... ......... ......... ......... ......... ......... ......... .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM14
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM22
+        5.79E+01 -5.92E+00  3.42E+02 -4.77E+00  3.19E+02  5.47E+03  3.52E+03 ......... ......... .........  1.15E+03
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM24
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         .........
 
 OM33
+       -2.39E+01  3.83E+00 -2.06E+02  2.79E+00  4.93E+02 -2.81E+03 -3.18E+03 ......... ......... ......... -4.06E+02 .........
         .........  1.35E+03
 
 OM34
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... .........
 
 OM44
+        1.26E+03 -1.51E+02  6.92E+03 -9.62E+01  1.24E+04  1.16E+05  7.57E+04 ......... ......... .........  2.00E+04 .........
         ......... -9.75E+03 .........  4.14E+05
 
 SG11
+        1.45E+03 -1.77E+02  7.97E+03 -1.11E+02  1.27E+04  1.34E+05  8.73E+04 ......... ......... .........  2.27E+04 .........
         ......... -1.14E+04 .........  4.73E+05  5.45E+05
 
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                                     SCATTERS                                   ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 
1       DV VS. PRED
+                                                                                                   DATA RECS.       1 THROUGH     335
  -1.00E+02            1.06E+03            2.22E+03 DV         3.38E+03            4.54E+03            5.70E+03
          .                   .                   .                   .                   .                   .
          .         .         .         .         .         .         .         .         .         .         .
 -1.00E+02. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
          ..                                                                                                  .
          .                                                                                                   .
          . .                                                                                                 .
          . $2 *                                                                                              .
          . 84                                                                                                .
          . 8C*3                                                                                              .
          .  *.                                                                                               .
          . 22 4 ***                                                                                          .
          . 263.  *                                                                                           .
  1.80E+02.                                                                                                   ..
          .     .                                                                                             .
          . *22 **2* *       *                                                                                .
          .  2 2**2* * *                                                                                      .
          .                                                                                                   .
          . *2  **   2*  **    2                                                                              .
          . 44**  .  *             *                                                                          .
          .                                                                                                   .
          .        .                                                                                          .
          . ***2**   * * *                     *               *                                              .
  4.60E+02.         .                                                                                         ..
          .                                                                                                   .
          . *452522* . 22*2*     **              *                                              *            *.
          .       *                                                                                           .
          .  2*4*2    . **                                *                                                   .
PRED      .   2 32    *                                  *                        *         *                 .
          .            .                                                                                      .
          .                                                                                                   .
          .             .                                                                                     .
          .                                                                                                   .
  7.40E+02.              .                                                                                    ..
          .                                                                                                   .
          .               .                                                                                   .
          .                                                                                                   .
          .                .                                                                                  .
          .                                                                                                   .
          .       *  2**   *.  2     *  **              *                                                     .
          .                                                                                                   .
          . 2** 2   **       2   *    *                                                                       .
          .                                                                                                   .
  1.02E+03.                   .                                                                               ..
          .                                                                                                   .
          .                    .                                                                              .
          . *         *  *****  * *   2  *                                                                    .
          .                                                                                                   .
          .                     .                                                                             .
          . *      **  * *   2 *   *    * **                                                                  .
          .                      .                                                                            .
          .                                                                                                   .
          .                       .                                                                           .
  1.30E+03. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
          .         .         .         .         .         .         .         .         .         .         .
1       WRES VS. PRED
+                                                                                                   DATA RECS.       1 THROUGH     335
  -3.00E+00            4.47E-08            3.00E+00 WRES       6.00E+00            9.00E+00            1.20E+01
          .                   .                   .                   .                   .                   .
          .         .         .         .         .         .         .         .         .         .         .
 -1.00E+02. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
          .                   .                                                                               .
          .                   .                                                                               .
          .                   .                                                                               .
          .         45** 46589669443 2*2*   *         * *                                                     .
          .             **3***2    * *                                                                        .
          .         ****222*32*42*                                                                            .
          .                   *                                                                               .
          .          ** *   **22*  *                                                                          .
          .         **   *23***  *                                                                            .
  1.80E+02.                   .                                                                               ..
          .                   .                                                                               .
          .            *** *22*  *  *           *                                                             .
          .       *    *    *24**                                                                             .
          .                   .                                                                               .
          .              ** 2 2 *  2    **     *                                                              .
          .      **      22*2 *  *          *                                                                 .
          .                   .                                                                               .
          .                   .                                                                               .
          .             22*2  *    **              *                   *                                      .
  4.60E+02.                   .                                                                               ..
          .                   .                                                                               .
          .     **      244442**23* **           *                                            *           *   .
          .       *           .                                                                               .
          .     *       **422 *                       *                                                       .
PRED      .               6 **.                       *                   *         *                         .
          .                   .                                                                               .
          .                   .                                                                               .
          .                   .                                                                               .
          .                   .                                                                               .
  7.40E+02.                   .                                                                               ..
          .                   .                                                                               .
          .                   .                                                                               .
          .                   .                                                                               .
          .                   .                                                                               .
          .                   .                                                                               .
          .         *   *  ***2 * **  *      *                                                                .
          .                   .                                                                               .
          .          * ***3* 2.*   *                                                                          .
          .                   .                                                                               .
  1.02E+03.                   .                                                                               ..
          .                   .                                                                               .
          .                   .                                                                               .
          .            *** ** 23 **                                                                           .
          .                   .                                                                               .
          .                   .                                                                               .
          .           *  2* *22 * **                                                                          .
          .                   .                                                                               .
          .                   .                                                                               .
          .                   .                                                                               .
  1.30E+03. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
          .         .         .         .         .         .         .         .         .         .         .
 #CPUT: Total CPU Time in Seconds,       10.172
Stop Time: 
Sun 01/15/2017 
06:08 PM
