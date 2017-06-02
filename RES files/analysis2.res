Thu 12/15/2016 
08:38 PM
;Model Desc: basic one cmt random ka v
;Project Name: raltest
;Project ID: NO PROJECT DESCRIPTION

;Project ID: NO PROJECT DESCRIPTION
 
$PROB RUN# analysis2
$INPUT C  ID TREAT TIME DV AMT EVID sex race weight height age HC
$DATA RAL_FOR_NONMEM.CSV IGNORE=C
$SUBROUTINES ADVAN2 TRANS2
$PK
   TVCL=THETA(1)
   CL=TVCL
   TVV=THETA(2)
   V=TVV*EXP(ETA(1))
   TVKA=THETA(3)
   KA=TVKA*EXP(ETA(2))
   S2=V
 
$ERROR
   Y = F + F*ERR(1)+ERR(2)
 IPRE=F
 
$EST METHOD=1 INTERACTION PRINT=5 MAX=9999 SIG=3    MSFO=analysis2.msf 
$THETA 
  (0, 64);[CL]
  (0, 281);[V]
  (0, .65);[KA]
$OMEGA
  0.04 ;[P] omega(1,1)
  0.04 ;[P] omega(2,2)

$SIGMA
  0.04 ;[P] sigma(1,1)
  0.04 ;[A] sigma(2,2)
$COV
$TABLE ID TIME ONEHEADER NOPRINT FILE=analysis2.tab

  
NM-TRAN MESSAGES 
  
 WARNINGS AND ERRORS (IF ANY) FOR PROBLEM    1
             
 (WARNING  2) NM-TRAN INFERS THAT THE DATA ARE POPULATION.
  
License Registered to: Carolyn Clayton
Expiration Date:    14 AUG 2017
Current Date:       15 DEC 2016
Days until program expires : 244
1NONLINEAR MIXED EFFECTS MODEL PROGRAM (NONMEM) VERSION 7.3.0
 ORIGINALLY DEVELOPED BY STUART BEAL, LEWIS SHEINER, AND ALISON BOECKMANN
 CURRENT DEVELOPERS ARE ROBERT BAUER, ICON DEVELOPMENT SOLUTIONS,
 AND ALISON BOECKMANN. IMPLEMENTATION, EFFICIENCY, AND STANDARDIZATION
 PERFORMED BY NOUS INFOSYSTEMS.

 PROBLEM NO.:         1
 RUN# analysis2
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
0LENGTH OF THETA:   3
0DEFAULT THETA BOUNDARY TEST OMITTED:    NO
0OMEGA HAS SIMPLE DIAGONAL FORM WITH DIMENSION:   2
0DEFAULT OMEGA BOUNDARY TEST OMITTED:    NO
0SIGMA HAS SIMPLE DIAGONAL FORM WITH DIMENSION:   2
0DEFAULT SIGMA BOUNDARY TEST OMITTED:    NO
0INITIAL ESTIMATE OF THETA:
 LOWER BOUND    INITIAL EST    UPPER BOUND
  0.0000E+00     0.6400E+02     0.1000E+07
  0.0000E+00     0.2810E+03     0.1000E+07
  0.0000E+00     0.6500E+00     0.1000E+07
0INITIAL ESTIMATE OF OMEGA:
 0.4000E-01
 0.0000E+00   0.4000E-01
0INITIAL ESTIMATE OF SIGMA:
 0.4000E-01
 0.0000E+00   0.4000E-01
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

 ONE COMPARTMENT MODEL WITH FIRST-ORDER ABSORPTION (ADVAN2)
0MAXIMUM NO. OF BASIC PK PARAMETERS:   3
0BASIC PK PARAMETERS (AFTER TRANSLATION):
   ELIMINATION RATE (K) IS BASIC PK PARAMETER NO.:  1
   ABSORPTION RATE (KA) IS BASIC PK PARAMETER NO.:  3

 TRANSLATOR WILL CONVERT PARAMETERS
 CLEARANCE (CL) AND VOLUME (V) TO K (TRANS2)
0COMPARTMENT ATTRIBUTES
 COMPT. NO.   FUNCTION   INITIAL    ON/OFF      DOSE      DEFAULT    DEFAULT
                         STATUS     ALLOWED    ALLOWED    FOR DOSE   FOR OBS.
    1         DEPOT        OFF        YES        YES        YES        NO
    2         CENTRAL      ON         NO         YES        NO         YES
    3         OUTPUT       OFF        YES        NO         NO         NO
1
 ADDITIONAL PK PARAMETERS - ASSIGNMENT OF ROWS IN GG
 COMPT. NO.                             INDICES
              SCALE      BIOAVAIL.   ZERO-ORDER  ZERO-ORDER  ABSORB
                         FRACTION    RATE        DURATION    LAG
    1            *           *           *           *           *
    2            4           *           *           *           *
    3            *           -           -           -           -
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   11692.5204567763        NO. OF FUNC. EVALS.:   7
 CUMULATIVE NO. OF FUNC. EVALS.:        7
 NPARAMETR:  6.4000E+01  2.8100E+02  6.5000E-01  4.0000E-02  4.0000E-02  4.0000E-02  4.0000E-02
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
 GRADIENT:   1.1721E+04 -1.4715E+02 -4.7474E+02 -1.3497E+02 -5.6356E+02 -1.4896E+04 -2.3295E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:   3948.06370947702        NO. OF FUNC. EVALS.:   8
 CUMULATIVE NO. OF FUNC. EVALS.:       50
 NPARAMETR:  3.5893E+02  2.6156E+03  1.5835E+00  1.9885E-01  1.2929E+00  8.3294E+01  6.9413E-02
 PARAMETER:  1.8243E+00  2.3309E+00  9.9042E-01  9.0183E-01  1.8379E+00  3.9206E+00  3.7560E-01
 GRADIENT:  -1.3937E+02  1.0621E-02  7.4082E-01  1.7776E+01  1.2623E+00  1.8027E+02 -1.5861E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:   3729.99502907582        NO. OF FUNC. EVALS.:   8
 CUMULATIVE NO. OF FUNC. EVALS.:       95
 NPARAMETR:  4.8150E+02  2.5167E+03  3.3202E+00  4.9828E-01  1.0564E-01  8.2626E+01  1.7094E+02
 PARAMETER:  2.1180E+00  2.2923E+00  1.7308E+00  1.3611E+00  5.8557E-01  3.9166E+00  4.2801E+00
 GRADIENT:  -1.5293E+02  4.3919E+01  1.8397E+01 -1.8494E+01 -1.9793E+01  1.4525E+02  3.0008E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:   3611.81545432539        NO. OF FUNC. EVALS.:  10
 CUMULATIVE NO. OF FUNC. EVALS.:      137
 NPARAMETR:  2.5291E+02  4.6046E+02  2.3366E+00  1.8036E-01  5.8805E-01  1.0655E+01  9.1064E+01
 PARAMETER:  1.4741E+00  5.9386E-01  1.3795E+00  8.5305E-01  1.4440E+00  2.8924E+00  3.9652E+00
 GRADIENT:   9.0758E+01 -1.7364E+01  1.3096E+01  1.2443E+01 -1.9153E+01  1.2782E+01 -1.6431E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:   3513.92124581272        NO. OF FUNC. EVALS.:   8
 CUMULATIVE NO. OF FUNC. EVALS.:      177
 NPARAMETR:  9.4540E+01  1.7045E+02  2.2113E+00  3.2557E-02  8.9887E+00  1.0958E+00  9.9081E+01
 PARAMETER:  4.9014E-01 -3.9993E-01  1.3244E+00 -2.9497E-03  2.8074E+00  1.7552E+00  4.0074E+00
 GRADIENT:   7.5317E+01 -3.1383E+01 -9.7784E-01 -4.3609E-01  4.1984E+00 -1.1438E+01 -9.7829E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:   3510.44152099675        NO. OF FUNC. EVALS.:   9
 CUMULATIVE NO. OF FUNC. EVALS.:      219
 NPARAMETR:  8.8620E+01  1.7298E+02  2.6195E+00  2.8680E-02  4.5493E+00  9.7414E-01  1.0230E+02
 PARAMETER:  4.2547E-01 -3.8518E-01  1.4938E+00 -6.6332E-02  2.4669E+00  1.6963E+00  4.0234E+00
 GRADIENT:   7.6862E+00 -1.9862E-01 -8.8966E-01  4.5039E-01  3.3397E-03 -6.4386E+00 -1.1806E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:   3510.18937629530        NO. OF FUNC. EVALS.:  15
 CUMULATIVE NO. OF FUNC. EVALS.:      274
 NPARAMETR:  8.8528E+01  1.7309E+02  3.5058E+00  2.7997E-02  4.7697E+00  9.8862E-01  1.0384E+02
 PARAMETER:  4.2444E-01 -3.8453E-01  1.7852E+00 -7.8396E-02  2.4906E+00  1.7037E+00  4.0309E+00
 GRADIENT:  -2.4368E-01 -2.6091E-02 -1.1542E-01  2.1965E-01 -9.0557E-02 -3.3712E-01 -1.1668E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:   3510.18433009624        NO. OF FUNC. EVALS.:  10
 CUMULATIVE NO. OF FUNC. EVALS.:      336
 NPARAMETR:  8.8654E+01  1.7346E+02  3.6264E+00  2.6865E-02  4.8699E+00  9.9194E-01  1.0373E+02
 PARAMETER:  4.2586E-01 -3.8239E-01  1.8190E+00 -9.9031E-02  2.5010E+00  1.7054E+00  4.0303E+00
 GRADIENT:   9.2172E-03 -7.9551E-03  3.4603E-03 -1.1461E-03 -7.7576E-04 -6.1462E-03 -1.5213E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      336
 NO. OF SIG. DIGITS IN FINAL EST.:  3.2

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -1.5082E-02 -1.3632E-01
 SE:             3.1287E-02  4.8295E-01
 N:                      12          12

 P VAL.:         6.2975E-01  7.7774E-01

 ETAshrink(%):   3.0936E+01  2.0818E+01
 EBVshrink(%):   3.2204E+01  2.1361E+01
 EPSshrink(%):   8.9848E-01  8.9848E-01

 #TERE:
 Elapsed estimation time in seconds:     3.61
 Elapsed covariance time in seconds:     1.48
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************     3510.184       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3     
 
         8.87E+01  1.73E+02  3.63E+00
 


 OMEGA - COV MATRIX FOR RANDOM EFFECTS - ETAS  ********


            ETA1      ETA2   
 
 ETA1
+        2.69E-02
 
 ETA2
+        0.00E+00  4.87E+00
 


 SIGMA - COV MATRIX FOR RANDOM EFFECTS - EPSILONS  ****


            EPS1      EPS2   
 
 EPS1
+        9.92E-01
 
 EPS2
+        0.00E+00  1.04E+02
 
1


 OMEGA - CORR MATRIX FOR RANDOM EFFECTS - ETAS  *******


            ETA1      ETA2   
 
 ETA1
+        1.64E-01
 
 ETA2
+        0.00E+00  2.21E+00
 


 SIGMA - CORR MATRIX FOR RANDOM EFFECTS - EPSILONS  ***


            EPS1      EPS2   
 
 EPS1
+        9.96E-01
 
 EPS2
+        0.00E+00  1.02E+01
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                            STANDARD ERROR OF ESTIMATE                          ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3     
 
         1.28E+01  3.45E+01  2.80E+00
 


 OMEGA - COV MATRIX FOR RANDOM EFFECTS - ETAS  ********


            ETA1      ETA2   
 
 ETA1
+        2.08E-02
 
 ETA2
+       .........  3.68E+00
 


 SIGMA - COV MATRIX FOR RANDOM EFFECTS - EPSILONS  ****


            EPS1      EPS2   
 
 EPS1
+        1.53E-01
 
 EPS2
+       .........  2.97E+01
 
1


 OMEGA - CORR MATRIX FOR RANDOM EFFECTS - ETAS  *******


            ETA1      ETA2   
 
 ETA1
+        6.35E-02
 
 ETA2
+       .........  8.33E-01
 


 SIGMA - CORR MATRIX FOR RANDOM EFFECTS - EPSILONS  ***


            EPS1      EPS2   
 
 EPS1
+        7.66E-02
 
 EPS2
+       .........  1.46E+00
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                          COVARIANCE MATRIX OF ESTIMATE                         ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      OM11      OM12      OM22      SG11      SG12      SG22  
 
 TH 1
+        1.65E+02
 
 TH 2
+        4.05E+02  1.19E+03
 
 TH 3
+        1.12E+01  2.21E+01  7.81E+00
 
 OM11
+       -5.34E-02 -3.65E-01  2.46E-04  4.34E-04
 
 OM12
+       ......... ......... ......... ......... .........
 
 OM22
+        1.46E+01  1.96E+01  9.72E+00  1.04E-02 .........  1.35E+01
 
 SG11
+       -1.27E+00 -3.66E+00 -1.19E-01  9.88E-05 ......... -1.08E-01  2.33E-02
 
 SG12
+       ......... ......... ......... ......... ......... ......... ......... .........
 
 SG22
+       -4.06E+01 -2.39E+02 -2.61E+01  3.22E-01 ......... -3.01E+01 -6.72E-01 .........  8.81E+02
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                          CORRELATION MATRIX OF ESTIMATE                        ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      OM11      OM12      OM22      SG11      SG12      SG22  
 
 TH 1
+        1.28E+01
 
 TH 2
+        9.15E-01  3.45E+01
 
 TH 3
+        3.11E-01  2.29E-01  2.80E+00
 
 OM11
+       -2.00E-01 -5.08E-01  4.22E-03  2.08E-02
 
 OM12
+       ......... ......... ......... ......... .........
 
 OM22
+        3.10E-01  1.54E-01  9.45E-01  1.35E-01 .........  3.68E+00
 
 SG11
+       -6.50E-01 -6.96E-01 -2.79E-01  3.11E-02 ......... -1.93E-01  1.53E-01
 
 SG12
+       ......... ......... ......... ......... ......... ......... ......... .........
 
 SG22
+       -1.07E-01 -2.33E-01 -3.15E-01  5.21E-01 ......... -2.76E-01 -1.48E-01 .........  2.97E+01
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                      INVERSE COVARIANCE MATRIX OF ESTIMATE                     ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      OM11      OM12      OM22      SG11      SG12      SG22  
 
 TH 1
+        2.26E-01
 
 TH 2
+       -1.10E-01  5.71E-02
 
 TH 3
+        1.23E-01 -3.73E-02  1.77E+00
 
 OM11
+       -5.48E+01  2.97E+01  1.34E+01  2.00E+04
 
 OM12
+       ......... ......... ......... ......... .........
 
 OM22
+       -1.86E-01  7.26E-02 -1.33E+00  5.10E+00 .........  1.14E+00
 
 SG11
+       -5.15E+00  3.08E+00  3.65E+00  1.68E+03 ......... -2.23E-03  2.66E+02
 
 SG12
+       ......... ......... ......... ......... ......... ......... ......... .........
 
 SG22
+       -6.04E-03  3.29E-03  4.07E-04  6.92E-02 .........  8.85E-03  2.96E-01 .........  2.27E-03
 
 #CPUT: Total CPU Time in Seconds,        4.266
Stop Time: 
Thu 12/15/2016 
08:39 PM
