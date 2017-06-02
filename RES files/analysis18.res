Sun 01/15/2017 
05:28 PM
;Model Desc: basic two cmt additive shift trt cl random vc cl q
;Project Name: raltest
;Project ID: NO PROJECT DESCRIPTION

;Project ID: NO PROJECT DESCRIPTION
 
$PROB RUN# analysis18
$INPUT C ID TREAT TIME DV AMT EVID sex race weight height age HC
$DATA RAL_FOR_NONMEM.CSV IGNORE=C
$SUBROUTINES ADVAN4 TRANS4
$PK
   TVCL=THETA(1)
   CL=TVCL*EXP(ETA(1))
   TVV2=THETA(2)
   V2=TVV2*EXP(ETA(2))*EXP(THETA(6)*TREAT)
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
 
$EST METHOD=1 INTERACTION PRINT=5 MAX=9999 SIG=3    MSFO=analysis18.msf 
$THETA 
  (0, 104);[CL]
  (0, 102);[V2]
  (0, 14.5);[Q]
  (0, 668);[V3]
  (0, 0.481);[KA]
  0.5;[trt]
$OMEGA
  0.4 ;[P] omega(1,1)
  0.4 ;[P] omega(2,2)
  0.4 ;[P] omega(3,3)
  0.04 ;[P] omega(4,4)
$SIGMA
  0.04 ;[P] sigma(1,1)
$COV
$TABLE ID TIME ONEHEADER NOPRINT FILE=analysis18.tab

  
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
 RUN# analysis18
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
 0.4000E+00
 0.0000E+00   0.4000E+00
 0.0000E+00   0.0000E+00   0.4000E+00
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   5270.73887493306        NO. OF FUNC. EVALS.:   9
 CUMULATIVE NO. OF FUNC. EVALS.:        9
 NPARAMETR:  1.0400E+02  1.0200E+02  1.4500E+01  6.6800E+02  4.8100E-01  5.0000E-01  4.0000E-01  4.0000E-01  4.0000E-01  4.0000E-02
             4.0000E-02
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   2.7719E+01  5.0353E+01  1.4014E+01  5.3199E+01 -1.1602E+01  1.2246E+03 -1.1123E+01 -3.7273E+01 -2.3210E+01 -1.1788E+01
            -4.9027E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:   3171.39329368369        NO. OF FUNC. EVALS.:  10
 CUMULATIVE NO. OF FUNC. EVALS.:       59
 NPARAMETR:  9.5626E+01  2.8885E+02  1.4286E+01  5.6762E+02  6.6071E-01 -1.6685E+00  3.6759E-01  2.1981E+00  5.2395E-01  7.4391E-02
             3.2304E-01
 PARAMETER:  1.6058E-02  1.1409E+00  8.5121E-02 -6.2843E-02  4.1746E-01 -3.3370E-01  5.7750E-02  9.5194E-01  2.3496E-01  4.1023E-01
             1.1444E+00
 GRADIENT:  -2.3602E-01 -1.5443E+00  5.0216E+00 -1.5732E+00 -2.0233E+01  7.4939E+01 -9.4947E-01  1.4158E+01  1.8596E+00 -5.6918E-01
            -9.5137E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:   3161.36871025809        NO. OF FUNC. EVALS.:  10
 CUMULATIVE NO. OF FUNC. EVALS.:      109
 NPARAMETR:  9.1797E+01  3.9709E+02  1.2326E+01  5.8841E+02  7.2787E-01 -1.6638E+00  3.4406E-01  1.1092E+00  4.3909E-01  7.5700E-02
             3.7149E-01
 PARAMETER: -2.4817E-02  1.4592E+00 -6.2458E-02 -2.6869E-02  5.1425E-01 -3.3276E-01  2.4679E-02  6.0997E-01  1.4662E-01  4.1895E-01
             1.2143E+00
 GRADIENT:  -4.4658E+00  1.6292E+00  3.3889E+00  2.9757E+00 -7.0930E+00  1.5738E+02 -2.4775E+00  4.8223E+00 -4.0945E+00  7.8011E-02
            -3.7008E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:   3157.08773253192        NO. OF FUNC. EVALS.:  12
 CUMULATIVE NO. OF FUNC. EVALS.:      166
 NPARAMETR:  9.9003E+01  3.7442E+02  1.1812E+01  6.1320E+02  7.3019E-01 -1.7971E+00  3.6295E-01  1.0499E+00  4.9763E-01  7.9780E-02
             4.2616E-01
 PARAMETER:  5.0756E-02  1.4004E+00 -1.0505E-01  1.4400E-02  5.1744E-01 -3.5942E-01  5.1399E-02  5.8250E-01  2.0920E-01  4.4520E-01
             1.2830E+00
 GRADIENT:  -8.6436E-01 -1.0449E+00  3.4171E-01  4.7961E+00  2.5535E+00  7.6936E+01 -6.4531E-01  2.9422E+00 -1.0621E+00  1.6724E+00
             1.2423E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:   3154.91299512447        NO. OF FUNC. EVALS.:  17
 CUMULATIVE NO. OF FUNC. EVALS.:      233
 NPARAMETR:  9.8873E+01  4.1043E+02  1.0633E+01  5.2418E+02  6.9924E-01 -1.9744E+00  3.5563E-01  9.0516E-01  5.0852E-01  6.8169E-02
             4.0780E-01
 PARAMETER:  4.9447E-02  1.4922E+00 -2.1022E-01 -1.4245E-01  4.7413E-01 -3.9488E-01  4.1214E-02  5.0832E-01  2.2002E-01  3.6656E-01
             1.2609E+00
 GRADIENT:  -7.4961E-02 -1.1131E-02  1.4165E-02  5.4080E-02  1.6920E-01 -3.3030E-01 -1.1450E-01 -3.8039E-01 -1.0189E-01 -6.3500E-02
             2.0630E-01

0ITERATION NO.:   24    OBJECTIVE VALUE:   3154.91084147539        NO. OF FUNC. EVALS.:  14
 CUMULATIVE NO. OF FUNC. EVALS.:      298
 NPARAMETR:  9.8971E+01  4.1061E+02  1.0626E+01  5.2392E+02  6.9894E-01 -1.9743E+00  3.5776E-01  9.2109E-01  5.1124E-01  6.8457E-02
             4.0749E-01
 PARAMETER:  5.0440E-02  1.4927E+00 -2.1084E-01 -1.4294E-01  4.7370E-01 -3.9486E-01  4.4198E-02  5.1705E-01  2.2269E-01  3.6867E-01
             1.2606E+00
 GRADIENT:   1.8241E-03 -1.4903E-03  1.7092E-03 -3.2632E-04 -6.9969E-03  1.7945E-02  1.9598E-03  1.0343E-03 -9.6736E-04  1.7617E-04
            -9.5618E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      298
 NO. OF SIG. DIGITS IN FINAL EST.:  3.4

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -7.2541E-03 -1.3521E-02 -2.6161E-02  4.0991E-03
 SE:             1.7016E-01  2.6960E-01  1.9729E-01  6.7626E-02
 N:                      12          12          12          12

 P VAL.:         9.6599E-01  9.6000E-01  8.9451E-01  9.5167E-01

 ETAshrink(%):   1.0000E-10  1.0000E-10  1.6595E-01  6.4832E+00
 EBVshrink(%):   1.5159E+00  1.9675E+00  4.5947E+00  1.1355E+01
 EPSshrink(%):   4.0280E+00

 #TERE:
 Elapsed estimation time in seconds:     3.60
 Elapsed covariance time in seconds:     4.81
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************     3154.911       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6     
 
         9.90E+01  4.11E+02  1.06E+01  5.24E+02  6.99E-01 -1.97E+00
 


 OMEGA - COV MATRIX FOR RANDOM EFFECTS - ETAS  ********


            ETA1      ETA2      ETA3      ETA4   
 
 ETA1
+        3.58E-01
 
 ETA2
+        0.00E+00  9.21E-01
 
 ETA3
+        0.00E+00  0.00E+00  5.11E-01
 
 ETA4
+        0.00E+00  0.00E+00  0.00E+00  6.85E-02
 


 SIGMA - COV MATRIX FOR RANDOM EFFECTS - EPSILONS  ****


            EPS1   
 
 EPS1
+        4.07E-01
 
1


 OMEGA - CORR MATRIX FOR RANDOM EFFECTS - ETAS  *******


            ETA1      ETA2      ETA3      ETA4   
 
 ETA1
+        5.98E-01
 
 ETA2
+        0.00E+00  9.60E-01
 
 ETA3
+        0.00E+00  0.00E+00  7.15E-01
 
 ETA4
+        0.00E+00  0.00E+00  0.00E+00  2.62E-01
 


 SIGMA - CORR MATRIX FOR RANDOM EFFECTS - EPSILONS  ***


            EPS1   
 
 EPS1
+        6.38E-01
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                            STANDARD ERROR OF ESTIMATE                          ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6     
 
         1.75E+01  1.18E+02  3.80E+00  2.35E+02  5.76E-02  1.39E-01
 


 OMEGA - COV MATRIX FOR RANDOM EFFECTS - ETAS  ********


            ETA1      ETA2      ETA3      ETA4   
 
 ETA1
+        1.33E-01
 
 ETA2
+       .........  3.09E-01
 
 ETA3
+       ......... .........  2.00E-01
 
 ETA4
+       ......... ......... .........  3.91E-02
 


 SIGMA - COV MATRIX FOR RANDOM EFFECTS - EPSILONS  ****


            EPS1   
 
 EPS1
+        5.99E-02
 
1


 OMEGA - CORR MATRIX FOR RANDOM EFFECTS - ETAS  *******


            ETA1      ETA2      ETA3      ETA4   
 
 ETA1
+        1.11E-01
 
 ETA2
+       .........  1.61E-01
 
 ETA3
+       ......... .........  1.40E-01
 
 ETA4
+       ......... ......... .........  7.47E-02
 


 SIGMA - CORR MATRIX FOR RANDOM EFFECTS - EPSILONS  ***


            EPS1   
 
 EPS1
+        4.69E-02
 
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
+        3.05E+02
 
 TH 2
+        1.58E+03  1.39E+04
 
 TH 3
+        3.97E+01  1.63E+02  1.45E+01
 
 TH 4
+        1.24E+03  1.07E+04  7.29E+02  5.52E+04
 
 TH 5
+       -2.77E-01 -2.94E+00  7.83E-03 -1.76E-01  3.31E-03
 
 TH 6
+        1.45E+00  3.98E+00  1.55E-01  1.73E+00 -9.35E-04  1.93E-02
 
 OM11
+       -5.54E-01 -4.47E+00  1.39E-01  1.73E+01  1.55E-03 -2.88E-03  1.77E-02
 
 OM12
+       ......... ......... ......... ......... ......... ......... ......... .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM14
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM22
+       -3.22E+00 -1.89E+01 -4.75E-01 -3.40E+00  6.72E-03 -1.10E-02  2.89E-02 ......... ......... .........  9.56E-02
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM24
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         .........
 
 OM33
+        1.74E-01  7.37E-01  4.17E-01  2.98E+01  1.88E-03 -1.14E-02  1.79E-02 ......... ......... .........  1.17E-02 .........
         .........  4.01E-02
 
 OM34
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... .........
 
 OM44
+       -1.31E-01 -1.20E+00 -5.25E-03 -1.41E+00  1.24E-03  1.84E-04 -1.55E-03 ......... ......... ......... -1.61E-03 .........
         ......... -2.32E-03 .........  1.53E-03
 
 SG11
+       -3.84E-01 -6.59E-01 -9.01E-02 -7.07E-01 -5.85E-04  2.04E-03  1.30E-03 ......... ......... .........  7.25E-03 .........
         ......... -3.94E-03 ......... -4.73E-04  3.58E-03
 
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
+        1.75E+01
 
 TH 2
+        7.66E-01  1.18E+02
 
 TH 3
+        5.98E-01  3.64E-01  3.80E+00
 
 TH 4
+        3.02E-01  3.86E-01  8.16E-01  2.35E+02
 
 TH 5
+       -2.76E-01 -4.34E-01  3.58E-02 -1.30E-02  5.76E-02
 
 TH 6
+        5.99E-01  2.43E-01  2.93E-01  5.31E-02 -1.17E-01  1.39E-01
 
 OM11
+       -2.38E-01 -2.85E-01  2.74E-01  5.53E-01  2.03E-01 -1.56E-01  1.33E-01
 
 OM12
+       ......... ......... ......... ......... ......... ......... ......... .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM14
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM22
+       -5.96E-01 -5.20E-01 -4.04E-01 -4.68E-02  3.77E-01 -2.57E-01  7.02E-01 ......... ......... .........  3.09E-01
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM24
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         .........
 
 OM33
+        4.98E-02  3.12E-02  5.48E-01  6.32E-01  1.63E-01 -4.09E-01  6.70E-01 ......... ......... .........  1.89E-01 .........
         .........  2.00E-01
 
 OM34
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... .........
 
 OM44
+       -1.92E-01 -2.61E-01 -3.53E-02 -1.53E-01  5.52E-01  3.39E-02 -2.97E-01 ......... ......... ......... -1.34E-01 .........
         ......... -2.96E-01 .........  3.91E-02
 
 SG11
+       -3.68E-01 -9.35E-02 -3.96E-01 -5.03E-02 -1.70E-01  2.45E-01  1.63E-01 ......... ......... .........  3.92E-01 .........
         ......... -3.28E-01 ......... -2.02E-01  5.99E-02
 
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
+        6.73E-01
 
 TH 2
+       -6.15E-02  5.97E-03
 
 TH 3
+       -6.71E-02  2.42E-02  3.37E+00
 
 TH 4
+        1.08E-02 -1.30E-03 -3.70E-02  6.82E-04
 
 TH 5
+       -1.25E+01  1.13E+00 -3.24E+01  6.14E-02  1.61E+03
 
 TH 6
+       -5.12E+01  4.45E+00 -2.66E+01 -4.58E-01  1.11E+03  4.32E+03
 
 OM11
+       -1.62E+01  1.75E+00 -8.46E+00 -4.27E-01  9.04E+02  1.12E+03  1.53E+03
 
 OM12
+       ......... ......... ......... ......... ......... ......... ......... .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM14
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM22
+        5.99E+00 -5.17E-01  1.79E+01 -2.30E-02 -5.13E+02 -5.58E+02 -5.17E+02 ......... ......... .........  2.74E+02
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM24
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         .........
 
 OM33
+       -7.69E+00  6.04E-01 -8.88E+00 -1.57E-02  2.90E+01  7.72E+02 -5.15E+01 ......... ......... ......... -4.80E+01 .........
         .........  2.92E+02
 
 OM34
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... .........
 
 OM44
+        3.78E+01 -3.10E+00  3.15E+01  1.08E-01 -1.83E+03 -3.13E+03 -9.64E+02 ......... ......... .........  5.98E+02 .........
         ......... -3.08E+02 .........  4.31E+03
 
 SG11
+        7.86E+01 -6.83E+00  4.59E+01  5.93E-01 -1.81E+03 -6.55E+03 -1.89E+03 ......... ......... .........  8.84E+02 .........
         ......... -9.79E+02 .........  5.15E+03  1.07E+04
 
 #CPUT: Total CPU Time in Seconds,        8.234
Stop Time: 
Sun 01/15/2017 
05:28 PM
