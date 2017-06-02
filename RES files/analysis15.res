Sun 01/15/2017 
05:14 PM
;Model Desc: basic two cmt additive shift trt cl random vc cl q
;Project Name: raltest
;Project ID: NO PROJECT DESCRIPTION

;Project ID: NO PROJECT DESCRIPTION
 
$PROB RUN# analysis15
$INPUT C ID TREAT TIME DV AMT EVID sex race weight height age HC
$DATA RAL_FOR_NONMEM.CSV IGNORE=C
$SUBROUTINES ADVAN4 TRANS4
$PK
   TVCL=THETA(1)
   CL=TVCL*EXP(ETA(1))
   TVV2=THETA(2)
   V2=TVV2*EXP(ETA(2))
   TVQ=THETA(3)
   Q=TVQ*EXP(ETA(3))+THETA(6)*TREAT
   TVV3=THETA(4)
   V3=TVV3
   TVKA=THETA(5)
   KA=TVKA*EXP(ETA(4))
   S2=V2
 
$ERROR
   Y = F + F*ERR(1)
 IPRE=F
 
$EST METHOD=1 INTERACTION PRINT=5 MAX=9999 SIG=3    MSFO=analysis15.msf 
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
$TABLE ID TIME ONEHEADER NOPRINT FILE=analysis15.tab
$TABLE ID TIME CL V2 Q V3 KA ONEHEADER NOPRINT FILE=PATABanalysis15
$TABLE ID ONEHEADER NOPRINT FILE=COTABanalysis15
$TABLE ID ONEHEADER NOPRINT FILE=CATABanalysis15
$TABLE ID IPRE ONEHEADER NOPRINT FILE=SDTABanalysis15
$TABLE ID CL V2 Q V3 KA FIRSTONLY NOAPPEND NOPRINT FILE=analysis15.par
$TABLE ID ETA1 ETA2 ETA3 FIRSTONLY NOAPPEND NOPRINT FILE=analysis15.eta


  
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
 RUN# analysis15
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
 ID TIME
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   5383.31014102713        NO. OF FUNC. EVALS.:   9
 CUMULATIVE NO. OF FUNC. EVALS.:        9
 NPARAMETR:  1.0400E+02  1.0200E+02  1.4500E+01  6.6800E+02  4.8100E-01  1.0000E-01  4.0000E-02  4.0000E-02  4.0000E-02  4.0000E-02
             4.0000E-02
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   2.2786E+02  1.0485E+02  8.5751E+01  5.7274E+01 -8.8910E+01  3.1962E+01 -2.4652E+02 -6.1534E+01 -2.6764E+02 -1.6818E+01
            -4.8583E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:   3499.90849984382        NO. OF FUNC. EVALS.:  10
 CUMULATIVE NO. OF FUNC. EVALS.:       63
 NPARAMETR:  1.0143E+02  1.2691E+02  3.1512E+01  5.7812E+02  4.8290E-01  8.0205E-03  3.4274E-01  5.5620E-02  2.0407E-01  3.5580E-02
             8.8825E+00
 PARAMETER:  7.5021E-02  3.1848E-01  8.7622E-01 -4.4514E-02  1.0393E-01  8.0205E-03  1.1741E+00  2.6483E-01  9.1480E-01  4.1447E-02
             2.8015E+00
 GRADIENT:  -5.8221E+01 -2.5492E+01  2.4793E+01 -3.6983E+01  8.6357E+00  1.7517E+00 -3.9651E+01 -1.5281E+00 -2.6960E+00  2.9833E+00
             1.9691E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:   3395.76206808693        NO. OF FUNC. EVALS.:  10
 CUMULATIVE NO. OF FUNC. EVALS.:      122
 NPARAMETR:  1.2495E+00  1.8320E+02  2.2945E+01  5.1770E+02  4.4903E-01 -2.1050E+00  3.9364E+03  1.7313E+00  1.2888E+00  4.9455E-03
             7.8292E-01
 PARAMETER: -4.3217E+00  6.8559E-01  5.5896E-01 -1.5488E-01  3.1213E-02 -2.1050E+00  5.8484E+00  1.9839E+00  1.8363E+00 -9.4520E-01
             1.5871E+00
 GRADIENT:   8.0262E+00  9.1007E+00  8.5267E+00 -2.4885E+01 -6.2802E+01  7.1784E-01  2.3874E+01  8.6579E+00  1.3370E+01 -2.1577E+00
             6.5705E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:   3305.57792919663        NO. OF FUNC. EVALS.:  10
 CUMULATIVE NO. OF FUNC. EVALS.:      173
 NPARAMETR:  9.8657E+00  8.9706E+01  1.7967E+01  7.9407E+02  5.0389E-01 -6.3447E+00  6.5075E+00  2.7476E-01  2.1456E-01  8.2278E-03
             7.4384E-01
 PARAMETER: -2.2553E+00 -2.8439E-02  3.1436E-01  2.7288E-01  1.4649E-01 -6.3447E+00  2.6459E+00  1.0635E+00  9.3987E-01 -6.9068E-01
             1.5615E+00
 GRADIENT:  -4.5952E+00 -1.0753E+01 -4.8574E+00  1.2206E+01  2.5767E+01 -3.6417E-01  1.7529E+00 -3.7273E+00 -9.2936E-01 -2.9191E+00
             6.6020E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:   3295.92030629726        NO. OF FUNC. EVALS.:  12
 CUMULATIVE NO. OF FUNC. EVALS.:      225
 NPARAMETR:  1.1057E+01  1.0159E+02  1.6200E+01  5.3053E+02  5.2316E-01 -6.4255E+00  4.2695E+00  3.2063E-01  1.9574E-01  2.7055E-02
             5.8810E-01
 PARAMETER: -2.1414E+00  9.5993E-02  2.1088E-01 -1.3041E-01  1.8402E-01 -6.4255E+00  2.4352E+00  1.1407E+00  8.9394E-01 -9.5504E-02
             1.4440E+00
 GRADIENT:  -7.7675E+00  3.0594E-01 -2.1200E+00 -8.3000E-02 -1.7175E+00 -1.0635E-01 -5.4852E+00 -5.6882E-01  2.3964E+00 -6.2990E-01
             1.6801E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:   3272.12913198232        NO. OF FUNC. EVALS.:  11
 CUMULATIVE NO. OF FUNC. EVALS.:      280
 NPARAMETR:  6.9875E+01  9.0194E+01  1.9701E+01  4.2336E+02  5.9576E-01 -9.8266E+00  4.8318E-01  5.8471E-01  4.4502E-02  9.1353E-02
             5.7171E-01
 PARAMETER: -2.9769E-01 -2.3015E-02  4.0654E-01 -3.5606E-01  3.1398E-01 -9.8266E+00  1.3458E+00  1.4411E+00  1.5333E-01  5.1292E-01
             1.4299E+00
 GRADIENT:  -1.7240E+01 -4.4329E+00  4.4176E+01 -1.7096E+00  1.3654E+01  1.6582E+00  3.3321E+00  3.1388E+00 -1.0887E+01  4.6697E+00
            -3.4051E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:   3260.81088658066        NO. OF FUNC. EVALS.:  10
 CUMULATIVE NO. OF FUNC. EVALS.:      331
 NPARAMETR:  9.7972E+01  1.0086E+02  1.6117E+01  4.2932E+02  5.4767E-01 -7.4995E+00  2.6571E-01  2.9865E-01  1.0209E-01  3.2749E-02
             5.6679E-01
 PARAMETER:  4.0290E-02  8.8743E-02  2.0570E-01 -3.4209E-01  2.2981E-01 -7.4995E+00  1.0468E+00  1.1052E+00  5.6848E-01 -1.0348E-05
             1.4256E+00
 GRADIENT:  -1.6191E+00 -5.1559E-01  1.6189E+00 -4.5054E-01  3.2668E+00  2.6033E-01 -6.5604E-01 -9.2108E-01  1.5477E-01 -1.1697E-01
            -1.7816E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:   3260.70048775965        NO. OF FUNC. EVALS.:  11
 CUMULATIVE NO. OF FUNC. EVALS.:      388
 NPARAMETR:  1.0037E+02  1.0120E+02  1.6252E+01  4.2508E+02  5.4281E-01 -7.9384E+00  2.7268E-01  3.3096E-01  8.7710E-02  3.2300E-02
             5.7458E-01
 PARAMETER:  6.4448E-02  9.2121E-02  2.1404E-01 -3.5202E-01  2.2090E-01 -7.9384E+00  1.0597E+00  1.1566E+00  4.9258E-01 -6.8989E-03
             1.4324E+00
 GRADIENT:   1.2532E-01  4.2831E-03  3.7067E-01 -9.5296E-02 -1.9104E-01  2.2491E-02  4.0766E-02 -4.2413E-03 -2.5363E-02  2.3645E-03
            -3.1980E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:   3260.69702347699        NO. OF FUNC. EVALS.:  17
 CUMULATIVE NO. OF FUNC. EVALS.:      468
 NPARAMETR:  1.0065E+02  1.0146E+02  1.6238E+01  4.2820E+02  5.4293E-01 -7.8560E+00  2.7280E-01  3.3003E-01  9.0909E-02  3.2335E-02
             5.7669E-01
 PARAMETER:  6.7225E-02  9.4719E-02  2.1323E-01 -3.4469E-01  2.2112E-01 -7.8560E+00  1.0599E+00  1.1551E+00  5.1049E-01 -6.3712E-03
             1.4342E+00
 GRADIENT:   9.6131E-03 -1.8747E-03 -1.1089E-02 -6.5061E-03  2.2562E-02  4.8341E-04 -1.2636E-03 -1.0609E-03  2.6968E-03  5.0265E-03
             4.5473E-03

0ITERATION NO.:   42    OBJECTIVE VALUE:   3260.69701808239        NO. OF FUNC. EVALS.:  14
 CUMULATIVE NO. OF FUNC. EVALS.:      499
 NPARAMETR:  1.0064E+02  1.0147E+02  1.6241E+01  4.2831E+02  5.4289E-01 -7.8571E+00  2.7284E-01  3.3005E-01  9.0898E-02  3.2292E-02
             5.7671E-01
 PARAMETER:  6.7181E-02  9.4751E-02  2.1338E-01 -3.4445E-01  2.2103E-01 -7.8571E+00  1.0600E+00  1.1552E+00  5.1043E-01 -7.0271E-03
             1.4342E+00
 GRADIENT:   3.0812E-03  4.7363E-04 -2.9333E-03  4.6089E-04  8.4867E-03  1.1609E-04  8.1823E-04 -7.1099E-04 -9.8966E-05 -4.4398E-04
             1.5089E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      499
 NO. OF SIG. DIGITS IN FINAL EST.:  3.6

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -1.4092E-02  1.2530E-02 -3.1922E-02  1.2778E-02
 SE:             1.4832E-01  1.3375E-01  8.1722E-02  3.2311E-02
 N:                      12          12          12          12

 P VAL.:         9.2431E-01  9.2536E-01  6.9608E-01  6.9249E-01

 ETAshrink(%):   1.0000E-10  1.5769E+01  1.9280E+00  3.4943E+01
 EBVshrink(%):   2.0086E+00  1.7727E+01  9.2971E+00  3.7521E+01
 EPSshrink(%):   2.9825E+00

 #TERE:
 Elapsed estimation time in seconds:     6.29
 Elapsed covariance time in seconds:     5.04
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************     3260.697       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6     
 
         1.01E+02  1.01E+02  1.62E+01  4.28E+02  5.43E-01 -7.86E+00
 


 OMEGA - COV MATRIX FOR RANDOM EFFECTS - ETAS  ********


            ETA1      ETA2      ETA3      ETA4   
 
 ETA1
+        2.73E-01
 
 ETA2
+        0.00E+00  3.30E-01
 
 ETA3
+        0.00E+00  0.00E+00  9.09E-02
 
 ETA4
+        0.00E+00  0.00E+00  0.00E+00  3.23E-02
 


 SIGMA - COV MATRIX FOR RANDOM EFFECTS - EPSILONS  ****


            EPS1   
 
 EPS1
+        5.77E-01
 
1


 OMEGA - CORR MATRIX FOR RANDOM EFFECTS - ETAS  *******


            ETA1      ETA2      ETA3      ETA4   
 
 ETA1
+        5.22E-01
 
 ETA2
+        0.00E+00  5.74E-01
 
 ETA3
+        0.00E+00  0.00E+00  3.01E-01
 
 ETA4
+        0.00E+00  0.00E+00  0.00E+00  1.80E-01
 


 SIGMA - CORR MATRIX FOR RANDOM EFFECTS - EPSILONS  ***


            EPS1   
 
 EPS1
+        7.59E-01
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                            STANDARD ERROR OF ESTIMATE                          ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6     
 
         1.50E+01  2.63E+01  4.57E+00  2.79E+02  5.45E-02  5.56E+00
 


 OMEGA - COV MATRIX FOR RANDOM EFFECTS - ETAS  ********


            ETA1      ETA2      ETA3      ETA4   
 
 ETA1
+        1.28E-01
 
 ETA2
+       .........  1.63E-01
 
 ETA3
+       ......... .........  2.54E-01
 
 ETA4
+       ......... ......... .........  2.23E-02
 


 SIGMA - COV MATRIX FOR RANDOM EFFECTS - EPSILONS  ****


            EPS1   
 
 EPS1
+        8.30E-02
 
1


 OMEGA - CORR MATRIX FOR RANDOM EFFECTS - ETAS  *******


            ETA1      ETA2      ETA3      ETA4   
 
 ETA1
+        1.23E-01
 
 ETA2
+       .........  1.42E-01
 
 ETA3
+       ......... .........  4.21E-01
 
 ETA4
+       ......... ......... .........  6.19E-02
 


 SIGMA - CORR MATRIX FOR RANDOM EFFECTS - EPSILONS  ***


            EPS1   
 
 EPS1
+        5.46E-02
 
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
+        2.25E+02
 
 TH 2
+        9.51E+01  6.93E+02
 
 TH 3
+        4.01E+01 -9.96E+00  2.09E+01
 
 TH 4
+        6.16E+02 -2.06E+03  5.96E+02  7.79E+04
 
 TH 5
+       -3.03E-01  1.84E-01 -6.88E-02 -1.11E+01  2.97E-03
 
 TH 6
+       -1.82E+01 -4.24E+01 -7.99E+00  1.02E+03 -1.60E-01  3.09E+01
 
 OM11
+       -3.20E-02 -1.38E+00  7.56E-03  2.77E+01 -3.57E-03  6.05E-01  1.64E-02
 
 OM12
+       ......... ......... ......... ......... ......... ......... ......... .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM14
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM22
+        1.22E+00  2.04E-01  2.13E-01  6.21E+00 -8.97E-04  1.59E-02  1.59E-03 ......... ......... .........  2.67E-02
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM24
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         .........
 
 OM33
+        1.04E-01 -2.63E+00  1.72E-01  6.39E+01 -8.94E-03  1.25E+00  2.96E-02 ......... ......... .........  5.85E-03 .........
         .........  6.44E-02
 
 OM34
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... .........
 
 OM44
+       -2.02E-01 -9.68E-02 -7.60E-02 -2.27E+00  4.03E-04  3.23E-02 -3.37E-04 ......... ......... ......... -7.74E-04 .........
         ......... -4.99E-04 .........  4.95E-04
 
 SG11
+       -5.84E-01  1.02E+00 -2.06E-01 -1.91E+00  9.64E-04  1.17E-01  1.93E-03 ......... ......... ......... -7.62E-04 .........
         ......... -2.02E-05 .........  2.26E-04  6.89E-03
 
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
+        1.50E+01
 
 TH 2
+        2.41E-01  2.63E+01
 
 TH 3
+        5.84E-01 -8.28E-02  4.57E+00
 
 TH 4
+        1.47E-01 -2.80E-01  4.67E-01  2.79E+02
 
 TH 5
+       -3.71E-01  1.28E-01 -2.76E-01 -7.32E-01  5.45E-02
 
 TH 6
+       -2.18E-01 -2.90E-01 -3.15E-01  6.57E-01 -5.30E-01  5.56E+00
 
 OM11
+       -1.66E-02 -4.09E-01  1.29E-02  7.74E-01 -5.11E-01  8.49E-01  1.28E-01
 
 OM12
+       ......... ......... ......... ......... ......... ......... ......... .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM14
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM22
+        4.98E-01  4.75E-02  2.86E-01  1.36E-01 -1.01E-01  1.76E-02  7.61E-02 ......... ......... .........  1.63E-01
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM24
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         .........
 
 OM33
+        2.73E-02 -3.94E-01  1.49E-01  9.02E-01 -6.46E-01  8.88E-01  9.10E-01 ......... ......... .........  1.41E-01 .........
         .........  2.54E-01
 
 OM34
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... .........
 
 OM44
+       -6.05E-01 -1.65E-01 -7.47E-01 -3.65E-01  3.32E-01  2.61E-01 -1.18E-01 ......... ......... ......... -2.13E-01 .........
         ......... -8.83E-02 .........  2.23E-02
 
 SG11
+       -4.69E-01  4.68E-01 -5.44E-01 -8.23E-02  2.13E-01  2.54E-01  1.81E-01 ......... ......... ......... -5.62E-02 .........
         ......... -9.59E-04 .........  1.22E-01  8.30E-02
 
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
+        3.77E-01
 
 TH 2
+       -2.30E-01  1.55E-01
 
 TH 3
+        2.52E+00 -1.98E+00  3.59E+01
 
 TH 4
+        1.84E-02 -1.18E-02  1.43E-01  1.76E-03
 
 TH 5
+        7.73E+01 -5.45E+01  8.32E+02  5.74E+00  2.56E+04
 
 TH 6
+        5.73E+00 -4.41E+00  7.68E+01  3.82E-01  1.96E+03  1.71E+02
 
 OM11
+       -4.25E+01  2.64E+01 -2.66E+02 -1.89E+00 -8.34E+03 -6.07E+02  5.59E+03
 
 OM12
+       ......... ......... ......... ......... ......... ......... ......... .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM14
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM22
+       -1.28E+01  8.00E+00 -9.55E+01 -5.06E-01 -2.54E+03 -2.04E+02  1.47E+03 ......... ......... .........  5.01E+02
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM24
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         .........
 
 OM33
+       -1.15E+02  8.95E+01 -1.58E+03 -8.40E+00 -4.10E+04 -3.54E+03  1.17E+04 ......... ......... .........  4.01E+03 .........
         .........  7.42E+04
 
 OM34
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... .........
 
 OM44
+       -4.39E+01  4.42E+01 -9.28E+02 -5.57E+00 -2.77E+04 -2.27E+03  5.44E+03 ......... ......... .........  1.41E+03 .........
         .........  4.80E+04 .........  4.97E+04
 
 SG11
+        5.03E+01 -3.03E+01  2.92E+02  1.42E+00  7.16E+03  5.85E+02 -6.07E+03 ......... ......... ......... -1.84E+03 .........
         ......... -1.09E+04 ......... -8.54E+00  8.56E+03
 
 #CPUT: Total CPU Time in Seconds,       11.031
Stop Time: 
Sun 01/15/2017 
05:14 PM
