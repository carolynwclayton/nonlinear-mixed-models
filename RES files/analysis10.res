Sun 01/15/2017 
04:43 PM
;Model Desc: basic two cmt random vc cl q
;Project Name: raltest
;Project ID: NO PROJECT DESCRIPTION

;Project ID: NO PROJECT DESCRIPTION
 
$PROB RUN# analysis10
$INPUT C ID TREAT TIME DV AMT EVID sex race weight height age HC
$DATA RAL_FOR_NONMEM.CSV IGNORE=C
$SUBROUTINES ADVAN4 TRANS4
$PK
   TVCL=THETA(1)
   CL=TVCL
   TVV2=THETA(2)
   V2=TVV2*EXP(ETA(1))
   TVQ=THETA(3)
   Q=TVQ*EXP(ETA(2))
   TVV3=THETA(4)
   V3=TVV3
   TVKA=THETA(5)
   KA=TVKA*EXP(ETA(3))
   S2=V2
 
$ERROR
   Y = F + F*ERR(1)
 IPRE=F
 
$EST METHOD=1 INTERACTION PRINT=5 MAX=9999 SIG=3    MSFO=analysis10.msf 
$THETA 
  (0, 64);[CL]
  (0, 138);[V2]
  (0, 9.3);[Q]
  (0, 143);[V3]
  (0, 0.65);[KA]
$OMEGA
  0.04 ;[P] omega(1,1)
  0.04 ;[P] omega(2,2)
  0.04 ;[P] omega(3,3)
$SIGMA
  0.04 ;[P] sigma(1,1)
$COV
$TABLE ID TIME ONEHEADER NOPRINT FILE=analysis10.tab

  
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
 RUN# analysis10
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
0LENGTH OF THETA:   5
0DEFAULT THETA BOUNDARY TEST OMITTED:    NO
0OMEGA HAS SIMPLE DIAGONAL FORM WITH DIMENSION:   3
0DEFAULT OMEGA BOUNDARY TEST OMITTED:    NO
0SIGMA HAS SIMPLE DIAGONAL FORM WITH DIMENSION:   1
0DEFAULT SIGMA BOUNDARY TEST OMITTED:    NO
0INITIAL ESTIMATE OF THETA:
 LOWER BOUND    INITIAL EST    UPPER BOUND
  0.0000E+00     0.6400E+02     0.1000E+07
  0.0000E+00     0.1380E+03     0.1000E+07
  0.0000E+00     0.9300E+01     0.1000E+07
  0.0000E+00     0.1430E+03     0.1000E+07
  0.0000E+00     0.6500E+00     0.1000E+07
0INITIAL ESTIMATE OF OMEGA:
 0.4000E-01
 0.0000E+00   0.4000E-01
 0.0000E+00   0.0000E+00   0.4000E-01
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   7276.58366735018        NO. OF FUNC. EVALS.:   8
 CUMULATIVE NO. OF FUNC. EVALS.:        8
 NPARAMETR:  6.4000E+01  1.3800E+02  9.3000E+00  1.4300E+02  6.5000E-01  4.0000E-02  4.0000E-02  4.0000E-02  4.0000E-02
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
 GRADIENT:   5.3498E+03  1.2954E+02  1.5192E+02 -6.9251E+02 -2.2665E+02 -2.2344E+02 -8.8848E+01 -1.9924E+02 -8.7589E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:   3584.96763096595        NO. OF FUNC. EVALS.:  16
 CUMULATIVE NO. OF FUNC. EVALS.:       60
 NPARAMETR:  8.0654E+01  2.9618E+01  1.0095E+01  2.8904E+02  6.4366E-01  3.4554E+00  8.3059E-01  5.9523E-02  3.7792E-01
 PARAMETER:  3.3129E-01 -1.4389E+00  1.8205E-01  8.0371E-01  9.0203E-02  2.3294E+00  1.6166E+00  2.9874E-01  1.2229E+00
 GRADIENT:   7.3963E+02 -1.0085E+00  2.6546E+00 -5.1155E+01 -6.6695E+00 -4.1165E+00  1.5560E+01 -1.1603E+01 -7.5670E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:   3482.04518129699        NO. OF FUNC. EVALS.:  12
 CUMULATIVE NO. OF FUNC. EVALS.:      109
 NPARAMETR:  6.7676E+01  9.7764E+00  7.7337E+00  2.4208E+02  6.5559E-01  6.9053E+00  4.6222E-01  1.5838E-01  4.0987E-01
 PARAMETER:  1.5584E-01 -2.5473E+00 -8.4428E-02  6.2644E-01  1.0857E-01  2.6756E+00  1.3236E+00  7.8806E-01  1.2635E+00
 GRADIENT:   2.3495E+02  5.0335E-01  4.6433E+00 -2.4609E+01  3.2015E+00 -3.2234E+00  8.3617E+00 -5.0550E+00 -3.8819E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:   3424.85686177534        NO. OF FUNC. EVALS.:   9
 CUMULATIVE NO. OF FUNC. EVALS.:      154
 NPARAMETR:  7.0249E+01  4.5253E+00  7.5542E+00  3.2514E+02  5.9121E-01  1.2873E+01  2.5076E-01  1.6806E-01  8.0897E-01
 PARAMETER:  1.9317E-01 -3.3176E+00 -1.0791E-01  9.2141E-01  5.2035E-03  2.9870E+00  1.0178E+00  8.1772E-01  1.6034E+00
 GRADIENT:  -1.6522E+01  1.0307E+00  1.3109E+00  2.5338E+00 -2.2017E+00 -5.7829E-01  9.3334E-01 -1.3905E-01  5.7744E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:   3424.66236288443        NO. OF FUNC. EVALS.:  17
 CUMULATIVE NO. OF FUNC. EVALS.:      215
 NPARAMETR:  7.0923E+01  4.5973E+00  7.3940E+00  3.1302E+02  6.0201E-01  1.4367E+01  2.3379E-01  1.7140E-01  8.1736E-01
 PARAMETER:  2.0272E-01 -3.3018E+00 -1.2934E-01  8.8342E-01  2.3308E-02  3.0419E+00  9.8276E-01  8.2757E-01  1.6086E+00
 GRADIENT:  -3.0051E+00  2.7672E-01 -1.7686E-01  9.2900E-01  3.2924E-01  3.1199E-01 -3.2927E-01  1.1465E-01 -1.8559E-02

0ITERATION NO.:   25    OBJECTIVE VALUE:   3424.62964062880        NO. OF FUNC. EVALS.:  15
 CUMULATIVE NO. OF FUNC. EVALS.:      290
 NPARAMETR:  7.1330E+01  4.0062E+00  7.4531E+00  3.0992E+02  5.9897E-01  1.4753E+01  2.4209E-01  1.7118E-01  8.2558E-01
 PARAMETER:  2.0844E-01 -3.4394E+00 -1.2139E-01  8.7348E-01  1.8239E-02  3.0552E+00  1.0002E+00  8.2693E-01  1.6136E+00
 GRADIENT:  -5.4025E-01  8.8359E-02  4.3339E-01 -1.5512E-01 -3.3802E-01  2.1168E-01  2.5772E-01 -2.7946E-03  1.0089E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:   3424.62362047319        NO. OF FUNC. EVALS.:  16
 CUMULATIVE NO. OF FUNC. EVALS.:      373
 NPARAMETR:  7.1247E+01  3.8318E+00  7.4082E+00  3.0952E+02  6.0058E-01  1.4558E+01  2.3891E-01  1.7092E-01  8.2226E-01
 PARAMETER:  2.0727E-01 -3.4839E+00 -1.2743E-01  8.7216E-01  2.0927E-02  3.0485E+00  9.9359E-01  8.2617E-01  1.6116E+00
 GRADIENT:  -2.9454E-02  1.0410E-03 -6.6827E-03  1.7854E-03 -1.4059E-02  3.6167E-03  1.0683E-02  1.1723E-03  1.6706E-02

0ITERATION NO.:   34    OBJECTIVE VALUE:   3424.62361575001        NO. OF FUNC. EVALS.:  12
 CUMULATIVE NO. OF FUNC. EVALS.:      430
 NPARAMETR:  7.1249E+01  3.8297E+00  7.4086E+00  3.0952E+02  6.0064E-01  1.4551E+01  2.3874E-01  1.7089E-01  8.2224E-01
 PARAMETER:  2.0729E-01 -3.4845E+00 -1.2737E-01  8.7219E-01  2.1023E-02  3.0483E+00  9.9325E-01  8.2606E-01  1.6116E+00
 GRADIENT:   1.0130E-02 -3.2788E-04 -6.4165E-03  1.1180E-03 -2.5610E-04 -1.1398E-03 -8.5163E-04  7.2744E-05 -1.4643E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      430
 NO. OF SIG. DIGITS IN FINAL EST.:  3.3

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         4.5178E-01 -1.4789E-02  3.3217E-02
 SE:             6.4911E-01  1.3078E-01  9.3872E-02
 N:                      12          12          12

 P VAL.:         4.8643E-01  9.0996E-01  7.2345E-01

 ETAshrink(%):   3.8431E+01  3.1576E+00  1.7839E+01
 EBVshrink(%):   3.8728E+01  7.5033E+00  1.9690E+01
 EPSshrink(%):   1.0871E+00

 #TERE:
 Elapsed estimation time in seconds:     4.79
 Elapsed covariance time in seconds:     3.21
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************     3424.624       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5     
 
         7.12E+01  3.83E+00  7.41E+00  3.10E+02  6.01E-01
 


 OMEGA - COV MATRIX FOR RANDOM EFFECTS - ETAS  ********


            ETA1      ETA2      ETA3   
 
 ETA1
+        1.46E+01
 
 ETA2
+        0.00E+00  2.39E-01
 
 ETA3
+        0.00E+00  0.00E+00  1.71E-01
 


 SIGMA - COV MATRIX FOR RANDOM EFFECTS - EPSILONS  ****


            EPS1   
 
 EPS1
+        8.22E-01
 
1


 OMEGA - CORR MATRIX FOR RANDOM EFFECTS - ETAS  *******


            ETA1      ETA2      ETA3   
 
 ETA1
+        3.81E+00
 
 ETA2
+        0.00E+00  4.89E-01
 
 ETA3
+        0.00E+00  0.00E+00  4.13E-01
 


 SIGMA - CORR MATRIX FOR RANDOM EFFECTS - EPSILONS  ***


            EPS1   
 
 EPS1
+        9.07E-01
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                            STANDARD ERROR OF ESTIMATE                          ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5     
 
         7.28E+00  5.45E+00  2.30E+00  1.50E+02  7.88E-02
 


 OMEGA - COV MATRIX FOR RANDOM EFFECTS - ETAS  ********


            ETA1      ETA2      ETA3   
 
 ETA1
+        6.39E+00
 
 ETA2
+       .........  1.09E-01
 
 ETA3
+       ......... .........  1.54E-01
 


 SIGMA - COV MATRIX FOR RANDOM EFFECTS - EPSILONS  ****


            EPS1   
 
 EPS1
+        9.35E-02
 
1


 OMEGA - CORR MATRIX FOR RANDOM EFFECTS - ETAS  *******


            ETA1      ETA2      ETA3   
 
 ETA1
+        8.38E-01
 
 ETA2
+       .........  1.12E-01
 
 ETA3
+       ......... .........  1.87E-01
 


 SIGMA - CORR MATRIX FOR RANDOM EFFECTS - EPSILONS  ***


            EPS1   
 
 EPS1
+        5.16E-02
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                          COVARIANCE MATRIX OF ESTIMATE                         ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      OM11      OM12      OM13      OM22      OM23      OM33      SG11  

 
 TH 1
+        5.29E+01
 
 TH 2
+       -2.73E+01  2.97E+01
 
 TH 3
+        1.03E+01 -6.22E+00  5.27E+00
 
 TH 4
+        4.99E+02 -2.81E+02  2.60E+02  2.26E+04
 
 TH 5
+       -1.48E-02 -5.05E-02  5.10E-02 -4.17E+00  6.21E-03
 
 OM11
+        1.82E+01 -3.14E+01  3.23E+00  1.51E+02  5.98E-02  4.08E+01
 
 OM12
+       ......... ......... ......... ......... ......... ......... .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... .........
 
 OM22
+        1.64E-01 -2.54E-01  2.80E-02  7.35E-01  9.78E-04  2.94E-01 ......... .........  1.20E-02
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM33
+       -7.08E-02 -6.41E-03  1.37E-02 -1.14E+01  9.43E-03  3.53E-02 ......... .........  9.01E-03 .........  2.39E-02
 
 SG11
+       -4.67E-01  3.87E-01 -1.35E-01 -6.66E+00  6.12E-05 -2.95E-01 ......... ......... -4.45E-03 ......... -2.43E-04  8.75E-03
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                          CORRELATION MATRIX OF ESTIMATE                        ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      OM11      OM12      OM13      OM22      OM23      OM33      SG11  

 
 TH 1
+        7.28E+00
 
 TH 2
+       -6.88E-01  5.45E+00
 
 TH 3
+        6.17E-01 -4.97E-01  2.30E+00
 
 TH 4
+        4.56E-01 -3.43E-01  7.53E-01  1.50E+02
 
 TH 5
+       -2.57E-02 -1.18E-01  2.82E-01 -3.52E-01  7.88E-02
 
 OM11
+        3.92E-01 -9.03E-01  2.20E-01  1.57E-01  1.19E-01  6.39E+00
 
 OM12
+       ......... ......... ......... ......... ......... ......... .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... .........
 
 OM22
+        2.06E-01 -4.26E-01  1.12E-01  4.47E-02  1.14E-01  4.21E-01 ......... .........  1.09E-01
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM33
+       -6.30E-02 -7.62E-03  3.87E-02 -4.92E-01  7.74E-01  3.57E-02 ......... .........  5.33E-01 .........  1.54E-01
 
 SG11
+       -6.86E-01  7.59E-01 -6.31E-01 -4.73E-01  8.30E-03 -4.94E-01 ......... ......... -4.35E-01 ......... -1.68E-02  9.35E-02
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                      INVERSE COVARIANCE MATRIX OF ESTIMATE                     ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      OM11      OM12      OM13      OM22      OM23      OM33      SG11  

 
 TH 1
+        2.89E-01
 
 TH 2
+        3.07E+00  4.61E+01
 
 TH 3
+        7.53E+00  1.27E+02  3.72E+02
 
 TH 4
+       -1.08E-01 -1.80E+00 -5.24E+00  7.38E-02
 
 TH 5
+       -3.25E+01 -6.67E+02 -2.07E+03  2.89E+01  1.34E+04
 
 OM11
+        1.71E+00  2.61E+01  7.23E+01 -1.02E+00 -3.86E+02  1.48E+01
 
 OM12
+       ......... ......... ......... ......... ......... ......... .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... .........
 
 OM22
+        6.24E+01  9.98E+02  2.86E+03 -4.05E+01 -1.51E+04  5.62E+02 ......... .........  2.27E+04
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM33
+       -6.74E+01 -1.06E+03 -3.03E+03  4.29E+01  1.57E+04 -5.99E+02 ......... ......... -2.40E+04 .........  2.55E+04
 
 SG11
+        2.12E+00  9.05E+01  3.73E+02 -5.13E+00 -2.66E+03  5.38E+01 ......... .........  2.70E+03 ......... -2.67E+03  1.22E+03
 
 #CPUT: Total CPU Time in Seconds,        7.734
Stop Time: 
Sun 01/15/2017 
04:43 PM
