Fri 01/20/2017 
12:10 AM
;Model Desc: two cmt additive shift trt cl
;Project Name: raltest
;Project ID: NO PROJECT DESCRIPTION

;Project ID: NO PROJECT DESCRIPTION
 
$PROB RUN# analysis11
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
   KA=TVKA*EXP(ETA(4))
   S2=V2
 
$ERROR
   Y = F + F*ERR(1)
 IPRE=F
 W1= 1
 W2= F
 IRES= DV-IPRE
 IWRE=IRES/(W1+W2)
 
$EST METHOD=1 INTERACTION PRINT=5 MAX=9999 SIG=3    MSFO=analysis11.msf 
$THETA 
  (0, 104);[CL]
  (0, 102);[V2]
  (0, 14.5);[Q]
  (0, 668);[V3]
  (0, 0.481);[KA]
  5;[trt]
$OMEGA
  0.04 ;[P] omega(1,1)
  0.04 ;[P] omega(2,2)
  0.04 ;[P] omega(3,3)
  0.04 ;[P] omega(4,4)
$SIGMA
  0.04 ;[P] sigma(1,1)
$COV
$TABLE ID TIME IPRE ONEHEADER NOPRINT FILE=analysis11.tab
$TABLE ID TIME CL V2 Q V3 KA ONEHEADER NOPRINT FILE=PATABanalysis11
$TABLE ID ONEHEADER NOPRINT FILE=COTABanalysis11
$TABLE ID ONEHEADER NOPRINT FILE=CATABanalysis11
$TABLE ID IPRE ONEHEADER NOPRINT FILE=SDTABanalysis11
$TABLE ID CL V2 Q V3 KA FIRSTONLY NOAPPEND NOPRINT FILE=analysis11.par
$TABLE ID ETA1 ETA2 ETA3 FIRSTONLY NOAPPEND NOPRINT FILE=analysis11.eta
$SCAT DV VS PRED UNIT
$SCAT WRES VS PRED


  
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
 RUN# analysis11
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
 -0.1000E+07     0.5000E+01     0.1000E+07
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   5244.84245351783        NO. OF FUNC. EVALS.:   9
 CUMULATIVE NO. OF FUNC. EVALS.:        9
 NPARAMETR:  1.0400E+02  1.0200E+02  1.4500E+01  6.6800E+02  4.8100E-01  5.0000E+00  4.0000E-02  4.0000E-02  4.0000E-02  4.0000E-02
             4.0000E-02
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   2.4635E+02  1.0564E+02  9.9949E+01  6.0396E+01 -1.1273E+02 -1.3504E+03 -2.6400E+02 -5.8630E+01 -2.6917E+02 -2.7922E+01
            -4.5906E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:   3202.59826094553        NO. OF FUNC. EVALS.:  10
 CUMULATIVE NO. OF FUNC. EVALS.:       59
 NPARAMETR:  8.2055E+01  1.0755E+02  1.4363E+01  5.2105E+02  5.7516E-01  8.1602E+01  2.1924E-01  5.3247E-02  1.0501E-01  3.6513E-02
             1.0307E+00
 PARAMETER: -1.3700E-01  1.5301E-01  9.0498E-02 -1.4844E-01  2.7879E-01  1.6320E+00  9.5064E-01  2.4303E-01  5.8256E-01  5.4396E-02
             1.7246E+00
 GRADIENT:  -1.0189E+01 -1.3822E+01 -7.4315E+00  1.1817E+01  3.2587E+01  3.9482E+01 -2.2217E+00 -6.8021E+00 -6.4087E+00  8.2527E-02
             1.2206E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:   3172.91679091447        NO. OF FUNC. EVALS.:  10
 CUMULATIVE NO. OF FUNC. EVALS.:      111
 NPARAMETR:  6.7057E+01  5.9091E+01  1.0096E+01  2.7311E+02  5.7754E-01  5.9791E+01  1.0636E+00  1.2432E+00  2.1153E-01  5.0764E-02
             6.2806E-01
 PARAMETER: -3.3885E-01 -4.4589E-01 -2.6200E-01 -7.9443E-01  2.8291E-01  1.1958E+00  1.7403E+00  1.8183E+00  9.3275E-01  2.1915E-01
             1.4769E+00
 GRADIENT:  -3.1835E+00 -5.3134E+00 -9.7321E+00 -1.6915E+01 -1.0700E+01  1.8680E+01  1.7151E+01  2.7809E+00  6.8362E+00  4.6086E+00
             1.0338E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:   3147.08300504871        NO. OF FUNC. EVALS.:  10
 CUMULATIVE NO. OF FUNC. EVALS.:      161
 NPARAMETR:  6.7063E+01  9.3996E+01  1.1379E+01  3.6511E+02  5.5773E-01  5.0560E+01  3.2220E-01  2.3876E-01  2.0919E-01  3.5224E-02
             4.4393E-01
 PARAMETER: -3.3876E-01  1.8284E-02 -1.4238E-01 -5.0410E-01  2.4800E-01  1.0112E+00  1.1431E+00  9.9328E-01  9.2718E-01  3.6426E-02
             1.3034E+00
 GRADIENT:  -9.7582E+00  1.9160E+00  1.7111E+00 -4.9923E+00 -1.6182E+01 -4.1468E+00  2.4163E+00 -3.1711E+00  1.3343E+00 -6.6347E-01
             1.9770E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:   3145.10746302308        NO. OF FUNC. EVALS.:  10
 CUMULATIVE NO. OF FUNC. EVALS.:      211
 NPARAMETR:  7.6183E+01  9.5754E+01  1.1482E+01  3.7388E+02  5.9561E-01  5.0677E+01  2.7441E-01  3.8870E-01  2.0035E-01  4.4716E-02
             4.2015E-01
 PARAMETER: -2.1126E-01  3.6812E-02 -1.3333E-01 -4.8036E-01  3.1371E-01  1.0135E+00  1.0629E+00  1.2370E+00  9.0560E-01  1.5573E-01
             1.2759E+00
 GRADIENT:   3.8484E-02  9.4849E-02  2.1774E-01 -1.8233E-02 -1.4840E-01 -1.3828E-01 -1.2851E-03  4.2130E-02 -8.6020E-03  3.3070E-02
            -1.9418E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:   3145.10435507140        NO. OF FUNC. EVALS.:  17
 CUMULATIVE NO. OF FUNC. EVALS.:      292
 NPARAMETR:  7.6608E+01  9.5928E+01  1.1484E+01  3.7427E+02  5.9676E-01  5.0777E+01  2.7417E-01  3.8789E-01  2.0033E-01  4.4784E-02
             4.2188E-01
 PARAMETER: -2.0569E-01  3.8625E-02 -1.3316E-01 -4.7932E-01  3.1565E-01  1.0155E+00  1.0624E+00  1.2359E+00  9.0554E-01  1.5649E-01
             1.2779E+00
 GRADIENT:   1.4539E-04 -8.0600E-03  7.0252E-03 -4.8086E-04 -3.5139E-04 -3.6414E-03 -3.6653E-03  5.1276E-03 -1.2525E-03  2.2361E-03
             3.0302E-02

0ITERATION NO.:   27    OBJECTIVE VALUE:   3145.10435242532        NO. OF FUNC. EVALS.:  14
 CUMULATIVE NO. OF FUNC. EVALS.:      323
 NPARAMETR:  7.6605E+01  9.5942E+01  1.1484E+01  3.7428E+02  5.9678E-01  5.0776E+01  2.7419E-01  3.8770E-01  2.0037E-01  4.4779E-02
             4.2184E-01
 PARAMETER: -2.0573E-01  3.8769E-02 -1.3320E-01 -4.7929E-01  3.1567E-01  1.0155E+00  1.0625E+00  1.2357E+00  9.0564E-01  1.5643E-01
             1.2779E+00
 GRADIENT:  -1.4749E-03 -2.5838E-03  3.1710E-03 -1.9821E-04  4.0571E-03  3.3555E-04 -1.9505E-03  7.5640E-04  9.8910E-04  2.8646E-04
             3.1377E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      323
 NO. OF SIG. DIGITS IN FINAL EST.:  3.5

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -7.0919E-03  2.6709E-02 -2.3738E-02  1.3404E-02
 SE:             1.4680E-01  1.4845E-01  1.1929E-01  4.8315E-02
 N:                      12          12          12          12

 P VAL.:         9.6147E-01  8.5722E-01  8.4227E-01  7.8145E-01

 ETAshrink(%):   1.0000E-10  1.3736E+01  3.5790E+00  1.7391E+01
 EBVshrink(%):   2.4986E+00  1.4505E+01  1.0372E+01  2.3914E+01
 EPSshrink(%):   3.3437E+00

 #TERE:
 Elapsed estimation time in seconds:     3.49
 Elapsed covariance time in seconds:     4.26
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************     3145.104       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6     
 
         7.66E+01  9.59E+01  1.15E+01  3.74E+02  5.97E-01  5.08E+01
 


 OMEGA - COV MATRIX FOR RANDOM EFFECTS - ETAS  ********


            ETA1      ETA2      ETA3      ETA4   
 
 ETA1
+        2.74E-01
 
 ETA2
+        0.00E+00  3.88E-01
 
 ETA3
+        0.00E+00  0.00E+00  2.00E-01
 
 ETA4
+        0.00E+00  0.00E+00  0.00E+00  4.48E-02
 


 SIGMA - COV MATRIX FOR RANDOM EFFECTS - EPSILONS  ****


            EPS1   
 
 EPS1
+        4.22E-01
 
1


 OMEGA - CORR MATRIX FOR RANDOM EFFECTS - ETAS  *******


            ETA1      ETA2      ETA3      ETA4   
 
 ETA1
+        5.24E-01
 
 ETA2
+        0.00E+00  6.23E-01
 
 ETA3
+        0.00E+00  0.00E+00  4.48E-01
 
 ETA4
+        0.00E+00  0.00E+00  0.00E+00  2.12E-01
 


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


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6     
 
         1.40E+01  2.45E+01  3.13E+00  1.48E+02  7.85E-02  6.40E+00
 


 OMEGA - COV MATRIX FOR RANDOM EFFECTS - ETAS  ********


            ETA1      ETA2      ETA3      ETA4   
 
 ETA1
+        9.15E-02
 
 ETA2
+       .........  2.14E-01
 
 ETA3
+       ......... .........  1.53E-01
 
 ETA4
+       ......... ......... .........  3.71E-02
 


 SIGMA - COV MATRIX FOR RANDOM EFFECTS - EPSILONS  ****


            EPS1   
 
 EPS1
+        5.38E-02
 
1


 OMEGA - CORR MATRIX FOR RANDOM EFFECTS - ETAS  *******


            ETA1      ETA2      ETA3      ETA4   
 
 ETA1
+        8.74E-02
 
 ETA2
+       .........  1.72E-01
 
 ETA3
+       ......... .........  1.70E-01
 
 ETA4
+       ......... ......... .........  8.76E-02
 


 SIGMA - CORR MATRIX FOR RANDOM EFFECTS - EPSILONS  ***


            EPS1   
 
 EPS1
+        4.14E-02
 
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
+        1.95E+02
 
 TH 2
+        2.27E+02  6.02E+02
 
 TH 3
+        2.56E+01  1.92E+01  9.79E+00
 
 TH 4
+        9.98E+02  2.61E+02  3.89E+02  2.18E+04
 
 TH 5
+        5.23E-02  7.10E-01  1.67E-02 -4.52E+00  6.17E-03
 
 TH 6
+       -3.41E+01 -3.45E+01 -3.84E+00 -3.87E+02  2.43E-01  4.10E+01
 
 OM11
+       -1.24E-01 -8.78E-01  4.99E-02  5.77E+00 -2.05E-03  6.16E-02  8.37E-03
 
 OM12
+       ......... ......... ......... ......... ......... ......... ......... .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM14
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM22
+        5.27E-01  6.40E-01 -3.02E-02 -8.88E+00  9.83E-03  7.02E-01  5.05E-03 ......... ......... .........  4.59E-02
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM24
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         .........
 
 OM33
+        8.57E-01 -6.30E-01  3.69E-01  1.97E+01 -2.73E-03 -2.97E-01  7.48E-03 ......... ......... .........  8.30E-04 .........
         .........  2.33E-02
 
 OM34
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... .........
 
 OM44
+        4.08E-02  1.41E-01 -5.74E-03 -2.42E+00  1.94E-03  6.14E-02 -1.88E-03 ......... ......... .........  2.64E-03 .........
         ......... -1.81E-03 .........  1.37E-03
 
 SG11
+       -4.06E-03  5.12E-01 -1.56E-02  1.16E+00 -1.49E-03 -5.86E-02  1.19E-03 ......... ......... ......... -1.68E-03 .........
         ......... -1.41E-03 ......... -1.23E-03  2.89E-03
 
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
+        1.40E+01
 
 TH 2
+        6.61E-01  2.45E+01
 
 TH 3
+        5.87E-01  2.50E-01  3.13E+00
 
 TH 4
+        4.83E-01  7.20E-02  8.42E-01  1.48E+02
 
 TH 5
+        4.77E-02  3.68E-01  6.78E-02 -3.89E-01  7.85E-02
 
 TH 6
+       -3.81E-01 -2.19E-01 -1.91E-01 -4.09E-01  4.83E-01  6.40E+00
 
 OM11
+       -9.67E-02 -3.91E-01  1.74E-01  4.27E-01 -2.85E-01  1.05E-01  9.15E-02
 
 OM12
+       ......... ......... ......... ......... ......... ......... ......... .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM14
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM22
+        1.76E-01  1.22E-01 -4.51E-02 -2.80E-01  5.85E-01  5.12E-01  2.58E-01 ......... ......... .........  2.14E-01
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM24
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         .........
 
 OM33
+        4.02E-01 -1.68E-01  7.74E-01  8.71E-01 -2.28E-01 -3.04E-01  5.36E-01 ......... ......... .........  2.54E-02 .........
         .........  1.53E-01
 
 OM34
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... .........
 
 OM44
+        7.89E-02  1.55E-01 -4.95E-02 -4.41E-01  6.67E-01  2.59E-01 -5.53E-01 ......... ......... .........  3.32E-01 .........
         ......... -3.21E-01 .........  3.71E-02
 
 SG11
+       -5.40E-03  3.88E-01 -9.27E-02  1.46E-01 -3.54E-01 -1.70E-01  2.42E-01 ......... ......... ......... -1.46E-01 .........
         ......... -1.72E-01 ......... -6.16E-01  5.38E-02
 
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
+        1.43E+00
 
 TH 2
+       -2.25E-01  1.60E-01
 
 TH 3
+       -1.51E+00  4.62E-01  3.38E+00
 
 TH 4
+       -3.38E-01  4.27E-04  2.29E-01  1.04E-01
 
 TH 5
+        7.31E+01 -3.68E+01 -1.40E+02 -6.13E+00  9.53E+03
 
 TH 6
+        2.16E+00 -3.01E-02 -1.79E+00 -6.45E-01  4.68E+01  4.11E+00
 
 OM11
+        5.09E+01  8.31E+00 -1.46E+01 -1.91E+01 -7.06E+02  1.15E+02  4.41E+03
 
 OM12
+       ......... ......... ......... ......... ......... ......... ......... .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM14
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM22
+       -1.46E+02  7.13E+00  1.24E+02  4.14E+01 -4.28E+03 -2.61E+02 -7.29E+03 ......... ......... .........  1.70E+04
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM24
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         .........
 
 OM33
+        3.35E+02 -7.13E+00 -2.72E+02 -9.99E+01  7.82E+03  6.27E+02  1.77E+04 ......... ......... ......... -4.03E+04 .........
         .........  9.70E+04
 
 OM34
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... .........
 
 OM44
+        3.98E+02 -1.46E+01 -3.41E+02 -1.16E+02  1.02E+04  7.30E+02  2.06E+04 ......... ......... ......... -4.72E+04 .........
         .........  1.13E+05 .........  1.34E+05
 
 SG11
+        4.77E+02 -5.49E+01 -4.65E+02 -1.23E+02  2.01E+04  7.81E+02  1.94E+04 ......... ......... ......... -5.17E+04 .........
         .........  1.21E+05 .........  1.44E+05  1.66E+05
 
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
          . $5                                                                                                .
          . F7 2                                                                                              .
          . *63   *                                                                                           .
          . 47*2                                                                                              .
          .                                                                                                   .
          . 22 4 ***                                                                                          .
  1.80E+02. *                                                                                                 ..
          .  22 **2* *       *                                                                                .
          .                                                                                                   .
          .  2 2**2* * *                                                                                      .
          .                                                                                                   .
          . *2  **   2*  **    2                                                                              .
          .       .                                                                                           .
          .                                                                                                   .
          .        .                                                                                          .
          .                                                                                                   .
  4.60E+02.    2 *2 .  2* 2*      *                                                                           ..
          .                                                                                                   .
          . ***2**   * * *                     *               *                                              .
          .                                                                                                   .
          .           .                                                                                       .
PRED      .                                                                                                   .
          .            .                                                                                      .
          .                                                                                                   .
          .             .                                                                                     .
          .                                                                                                   .
  7.40E+02. 2** 2 * *3** . * 2 2 *   ** **              *                                                     ..
          .  *                                                                                                .
          .  ** 3* *    * .      *                                                              *            *.
          .                                                                                                   .
          . 44*      **  *** *  * **  2  *                                                                    .
          . *  *            *                                                                                 .
          .                 .                                                                                 .
          . *      **  * *   2 *   *    * **                                                                  .
          .                  .                                                                                .
          .                                                                                                   .
  1.02E+03.    *              .                                                                               ..
          .                                                                                                   .
          .                    .                                                            *                 .
          .   2 32    *                                  *                        *                           .
          .                                                                                                   .
          . *23 2 *      *      .                *                                                            .
          .   *                                                                                               .
          .  2*3*2      **       .                        *                                                   .
          .                                                                                                   .
          .                       .                                                                           .
  1.30E+03. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
          .         .         .         .         .         .         .         .         .         .         .
1       WRES VS. PRED
+                                                                                                   DATA RECS.       1 THROUGH     335
  -2.60E+00           -7.20E-01            1.16E+00 WRES       3.04E+00            4.92E+00            6.80E+00
          .                   .                   .                   .                   .                   .
          .         .         .         .         .         .         .         .         .         .         .
 -1.00E+02. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
          .                           .                                                                       .
          .                           .                                                                       .
          .                           .                                                                       .
          .*   *   **    2 2*2 37522538635252*32** *2   *   **      *                                         .
          .           *   ** * * 3* *25 * ****      *                                         *               .
          .     *    *            * *2***  *          *                                                       .
          .              *   2 * 222 ***    *                                                                 .
          .                           .                                                                       .
          .            * *    *  2* * .*  **           *                                                      .
  1.80E+02.                     *     .                                                                       ..
          .          * *           ***.2*  *     *                  *                                         .
          .                           .                                                                       .
          .         *        *   *2*  . *2*     *                                                             .
          .                           .                                                                       .
          .                    * 2*** *     2 *      *       *                                                .
          .                           .                                                                       .
          .                           .                                                                       .
          .                           .                                                                       .
          .                           .                                                                       .
  4.60E+02.         *        *    * 3 .    * ***  *       *                                                   ..
          .                           .                                                                       .
          .              * ** 2  2   *.  **            *                       *                              .
          .                           .                                                                       .
          .                           .                                                                       .
PRED      .                           .                                                                       .
          .                           .                                                                       .
          .                           .                                                                       .
          .                           .                                                                       .
          .                           .                                                                       .
  7.40E+02.              *  ** 4***** .* *  ** *2*   * *   *                *                                 ..
          .                 *         .                                                                       .
          .              * ******    *.   *                                                     *           * .
          .                           .                                                                       .
          .               3 2** *2  2*. ** * ** * * *                                                         .
          .                 * * *     .                                                                       .
          .                           .                                                                       .
          .                 **    * **.* *   2*       2                                                       .
          .                           .                                                                       .
          .                           .                                                                       .
  1.02E+03.                   *       .                                                                       ..
          .                           .                                                                       .
          .                           .                                        *                              .
          .                *32 2      .                *             *                                        .
          .                           .                                                                       .
          .           **    232  *    .        *                                                              .
          .                  *        .                                                                       .
          .        *      *2222 *     .             *                                                         .
          .                           .                                                                       .
          .                           .                                                                       .
  1.30E+03. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
          .         .         .         .         .         .         .         .         .         .         .
 #CPUT: Total CPU Time in Seconds,        7.563
Stop Time: 
Fri 01/20/2017 
12:10 AM
