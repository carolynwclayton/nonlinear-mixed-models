Sun 01/15/2017 
08:13 PM
;Model Desc: basic two cmt additive shift trt cl linear weight cl random vc cl q
;Project Name: raltest
;Project ID: NO PROJECT DESCRIPTION

;Project ID: NO PROJECT DESCRIPTION
 
$PROB RUN# analysis30
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
   V3=TVV3*(weight**THETA(7))
   TVKA=THETA(5)
   KA=TVKA*EXP(ETA(4))
   S2=V2
 
$ERROR
   Y = F + F*ERR(1)
 IPRE=F
 
$EST METHOD=1 INTERACTION PRINT=5 MAX=9999 SIG=3    MSFO=analysis30.msf 
$THETA 
  (0, 104);[CL]
  (0, 102);[V2]
  (0, 14.5);[Q]
  (0, 668);[V3]
  (0, 0.481);[KA]
  5;[trt]
  1;[wt]
$OMEGA
  0.04 ;[P] omega(1,1)
  0.04 ;[P] omega(2,2)
  0.04 ;[P] omega(3,3)
  0.04 ;[P] omega(4,4)
$SIGMA
  0.04 ;[P] sigma(1,1)
$COV
$TABLE ID TIME ONEHEADER NOPRINT FILE=analysis30.tab

  
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
 RUN# analysis30
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
 -0.1000E+07     0.1000E+01     0.1000E+07
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   7242.91714138097        NO. OF FUNC. EVALS.:  10
 CUMULATIVE NO. OF FUNC. EVALS.:       10
 NPARAMETR:  1.0400E+02  1.0200E+02  1.4500E+01  6.6800E+02  4.8100E-01  5.0000E+00  1.0000E+00  4.0000E-02  4.0000E-02  4.0000E-02
             4.0000E-02  4.0000E-02
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01  1.0000E-01
 GRADIENT:   9.5104E+02  1.5439E+02 -7.4611E+02  2.2022E+03 -3.7988E+01 -6.5690E+02  9.1747E+04 -1.8913E+03 -1.3569E+02 -1.0407E+03
            -2.9548E+01 -6.1441E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:   3635.47453534146        NO. OF FUNC. EVALS.:  11
 CUMULATIVE NO. OF FUNC. EVALS.:       66
 NPARAMETR:  8.2410E+01  8.5394E+01  1.0785E+01  6.7644E+02  7.1057E-01  1.9438E+01 -4.7148E-01  8.0663E-02  4.2339E-02  7.4243E-02
             3.9965E-02  1.2523E-01
 PARAMETER: -1.3269E-01 -7.7695E-02 -1.9602E-01  1.1256E-01  4.9021E-01  3.8875E-01 -4.7148E-02  4.5070E-01  1.2842E-01  4.0923E-01
             9.9565E-02  6.7062E-01
 GRADIENT:   1.2797E+02  5.4629E+01  2.0661E+02 -3.8696E+02 -8.5196E+01 -4.4401E+02 -1.5795E+04 -7.5617E+01 -2.2804E+01 -1.3185E+02
            -2.5754E+01 -1.0733E+03

0ITERATION NO.:   10    OBJECTIVE VALUE:   3436.86981569107        NO. OF FUNC. EVALS.:  11
 CUMULATIVE NO. OF FUNC. EVALS.:      122
 NPARAMETR:  5.5168E+01  1.1388E+02  3.1382E+00  1.7860E+03  5.5722E+00  1.8029E+01 -7.6734E-01  8.9051E-02  3.3721E-01  2.5540E-02
             4.0000E-06  1.6875E-01
 PARAMETER: -5.3401E-01  2.1016E-01 -1.4305E+00  1.0834E+00  2.5497E+00  3.6058E-01 -7.6734E-02  5.0017E-01  1.1659E+00 -1.2433E-01
            -6.6092E+00  8.1976E-01
 GRADIENT:   5.7930E+01  8.1373E+00 -1.0229E+01 -7.0139E+01 -8.2527E+00 -2.3165E+02 -2.8480E+03 -4.5109E+01  3.4765E+00 -2.6149E+01
             0.0000E+00 -6.5199E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:   3244.58882573139        NO. OF FUNC. EVALS.:  12
 CUMULATIVE NO. OF FUNC. EVALS.:      181
 NPARAMETR:  5.9956E+01  2.2785E+02  6.5524E+00  2.9129E+04  4.3922E+01  2.6618E+01 -1.2656E+00  1.9788E-01  7.0928E-01  1.0863E-01
             4.0000E-06  4.2872E-01
 PARAMETER: -4.5078E-01  9.0370E-01 -6.9431E-01  3.8752E+00  4.6143E+00  5.3237E-01 -1.2656E-01  8.9938E-01  1.5377E+00  5.9955E-01
            -1.5112E+01  1.2860E+00
 GRADIENT:  -1.5390E+00  1.2772E+01  2.9586E+01 -3.0784E+01 -7.3866E-01 -5.1467E+01 -1.2727E+03 -8.1309E+00  1.0989E+01 -1.0180E+01
             0.0000E+00 -2.8490E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:   3227.89596114669        NO. OF FUNC. EVALS.:  11
 CUMULATIVE NO. OF FUNC. EVALS.:      236
 NPARAMETR:  6.8737E+01  1.8907E+02  7.0547E+00  4.1338E+03  2.3665E+01  3.0408E+01 -7.0198E-01  2.4419E-01  2.7060E-01  2.3989E-01
             4.0000E-06  4.7319E-01
 PARAMETER: -3.1410E-01  7.1714E-01 -6.2046E-01  1.9227E+00  3.9959E+00  6.0816E-01 -7.0198E-02  1.0045E+00  1.0559E+00  9.9565E-01
            -1.6734E+01  1.3353E+00
 GRADIENT:   5.1668E+00  2.4815E+00  5.8766E+00 -9.1341E+00 -8.0424E-01 -5.6057E+00 -3.6684E+02 -3.2357E+00  3.6019E+00  5.9622E-01
             0.0000E+00  1.6269E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:   3226.86249937459        NO. OF FUNC. EVALS.:  12
 CUMULATIVE NO. OF FUNC. EVALS.:      292
 NPARAMETR:  6.5318E+01  1.8867E+02  6.8845E+00  1.3927E+04  2.5073E+01  3.0468E+01 -9.6110E-01  2.8414E-01  2.2769E-01  2.4875E-01
             4.0000E-06  4.6859E-01
 PARAMETER: -3.6512E-01  7.1501E-01 -6.4488E-01  3.1373E+00  4.0537E+00  6.0935E-01 -9.6110E-02  1.0803E+00  9.6954E-01  1.0138E+00
            -1.7688E+01  1.3304E+00
 GRADIENT:   5.1768E-01  1.2711E+00 -4.9226E-01 -5.2836E-01 -7.2224E-01 -2.5191E+00 -2.1969E+01 -1.6275E-01  2.2535E-01 -2.6380E-01
             0.0000E+00  1.4107E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:   3226.53662000166        NO. OF FUNC. EVALS.:  12
 CUMULATIVE NO. OF FUNC. EVALS.:      351
 NPARAMETR:  6.1995E+01  1.8523E+02  6.9642E+00  4.3235E+03  4.9119E+01  3.0175E+01 -6.7974E-01  3.0756E-01  2.3111E-01  2.5138E-01
             4.0000E-06  4.6280E-01
 PARAMETER: -4.1734E-01  6.9665E-01 -6.3337E-01  1.9675E+00  4.7261E+00  6.0350E-01 -6.7974E-02  1.1199E+00  9.7700E-01  1.0191E+00
            -1.9146E+01  1.3242E+00
 GRADIENT:  -2.4747E+00  4.0803E-01  1.2972E+00 -8.1329E-01 -3.3968E-01 -8.7150E-01 -2.3250E+01  1.1689E+00  3.8544E-01 -5.8822E-01
             0.0000E+00 -7.8623E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:   3226.13591627449        NO. OF FUNC. EVALS.:  19
 CUMULATIVE NO. OF FUNC. EVALS.:      449
 NPARAMETR:  6.4821E+01  1.8841E+02  7.0177E+00  2.6320E+02  1.0227E+02  3.0248E+01  6.8055E-04  3.0305E-01  2.2658E-01  2.8157E-01
             4.0000E-06  4.6735E-01
 PARAMETER: -3.7276E-01  7.1366E-01 -6.2571E-01 -8.3137E-01  5.4595E+00  6.0496E-01  6.8055E-05  1.1125E+00  9.6711E-01  1.0758E+00
            -2.0953E+01  1.3291E+00
 GRADIENT:  -1.0750E+00 -2.2425E-01  1.8766E-01 -5.8843E-01 -1.3382E-01  1.1163E-01 -2.2180E+01  8.5258E-01  2.5580E-01  2.8574E-01
             0.0000E+00 -2.2160E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:   3226.03839713491        NO. OF FUNC. EVALS.:  19
 CUMULATIVE NO. OF FUNC. EVALS.:      547
 NPARAMETR:  6.5642E+01  1.8998E+02  7.1519E+00  5.3915E+02  2.3174E+02  3.0105E+01 -1.6804E-01  2.9385E-01  2.1896E-01  2.7343E-01
             4.0000E-06  4.6945E-01
 PARAMETER: -3.6017E-01  7.2194E-01 -6.0678E-01 -1.1430E-01  6.2775E+00  6.0210E-01 -1.6804E-02  1.0971E+00  9.5001E-01  1.0611E+00
            -2.2783E+01  1.3313E+00
 GRADIENT:  -2.4260E-01  3.9240E-01  1.3277E+00 -1.2046E-01 -5.3749E-02 -2.4431E+00 -4.5393E+00  1.7042E-01 -4.8021E-01 -3.4061E-01
             0.0000E+00  2.1953E-01

0ITERATION NO.:   45    OBJECTIVE VALUE:   3225.96190964443        NO. OF FUNC. EVALS.:  19
 CUMULATIVE NO. OF FUNC. EVALS.:      644
 NPARAMETR:  6.5557E+01  1.8846E+02  6.9439E+00  6.7920E+02  4.5913E+03  3.0159E+01 -2.2839E-01  2.8959E-01  2.2303E-01  2.7332E-01
             4.0000E-06  4.6927E-01
 PARAMETER: -3.6147E-01  7.1391E-01 -6.3629E-01  1.1663E-01  9.2638E+00  6.0319E-01 -2.2839E-02  1.0898E+00  9.5921E-01  1.0609E+00
            -2.9647E+01  1.3311E+00
 GRADIENT:  -1.4230E-02 -8.4446E-03 -7.3681E-02 -7.4670E-03 -2.7990E-03  4.3708E-02 -3.3049E-01 -1.8531E-02  8.1610E-03  2.3965E-02
             0.0000E+00  4.9065E-02

0ITERATION NO.:   50    OBJECTIVE VALUE:   3225.95910932204        NO. OF FUNC. EVALS.:  19
 CUMULATIVE NO. OF FUNC. EVALS.:      739
 NPARAMETR:  6.5571E+01  1.8853E+02  6.9549E+00  6.7086E+02  5.5623E+05  3.0157E+01 -2.2513E-01  2.9002E-01  2.2302E-01  2.7324E-01
             4.0000E-06  4.6924E-01
 PARAMETER: -3.6126E-01  7.1428E-01 -6.3470E-01  1.0427E-01  1.4061E+01  6.0314E-01 -2.2513E-02  1.0905E+00  9.5919E-01  1.0607E+00
            -4.0578E+01  1.3311E+00
 GRADIENT:  -5.4013E-03  7.1069E-03  7.4469E-03  2.8590E-04 -2.2938E-05  5.6613E-03  2.1208E-02  2.5811E-03 -5.3936E-04 -2.3887E-03
             0.0000E+00 -3.7341E-03

0ITERATION NO.:   55    OBJECTIVE VALUE:   3225.95907370487        NO. OF FUNC. EVALS.:  16
 CUMULATIVE NO. OF FUNC. EVALS.:      853
 NPARAMETR:  6.5573E+01  1.8850E+02  6.9535E+00  6.7424E+02  4.1948E+06  3.0156E+01 -2.2639E-01  2.8997E-01  2.2302E-01  2.7321E-01
             4.0000E-06  4.6924E-01
 PARAMETER: -3.6122E-01  7.1410E-01 -6.3491E-01  1.0929E-01  1.6081E+01  6.0312E-01 -2.2639E-02  1.0905E+00  9.5919E-01  1.0607E+00
            -4.5110E+01  1.3311E+00
 GRADIENT:   2.6012E-04 -4.4336E-03  1.9179E-03 -2.5135E-03 -3.0448E-06  3.6939E-03 -1.0753E-01  1.3055E-03 -2.6355E-04 -2.8685E-04
             0.0000E+00  5.3938E-04

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      853
 NO. OF SIG. DIGITS IN FINAL EST.:  3.0
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -8.7740E-03 -1.6317E-02 -1.8513E-02  5.3230E-13
 SE:             1.5142E-01  1.2945E-01  1.4087E-01  9.3358E-13
 N:                      12          12          12          12

 P VAL.:         9.5379E-01  8.9969E-01  8.9544E-01  5.6856E-01

 ETAshrink(%):   1.0000E-10  8.2094E-01  2.4925E+00  1.0000E+02
 EBVshrink(%):   2.2750E+00  4.5842E+00  7.6726E+00  1.0000E+02
 EPSshrink(%):   2.6143E+00

 #TERE:
 Elapsed estimation time in seconds:     7.27
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************     3225.959       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7     
 
         6.56E+01  1.88E+02  6.95E+00  6.74E+02  4.19E+06  3.02E+01 -2.26E-01
 


 OMEGA - COV MATRIX FOR RANDOM EFFECTS - ETAS  ********


            ETA1      ETA2      ETA3      ETA4   
 
 ETA1
+        2.90E-01
 
 ETA2
+        0.00E+00  2.23E-01
 
 ETA3
+        0.00E+00  0.00E+00  2.73E-01
 
 ETA4
+        0.00E+00  0.00E+00  0.00E+00  4.00E-06
 


 SIGMA - COV MATRIX FOR RANDOM EFFECTS - EPSILONS  ****


            EPS1   
 
 EPS1
+        4.69E-01
 
1


 OMEGA - CORR MATRIX FOR RANDOM EFFECTS - ETAS  *******


            ETA1      ETA2      ETA3      ETA4   
 
 ETA1
+        5.38E-01
 
 ETA2
+        0.00E+00  4.72E-01
 
 ETA3
+        0.00E+00  0.00E+00  5.23E-01
 
 ETA4
+        0.00E+00  0.00E+00  0.00E+00  2.00E-03
 


 SIGMA - CORR MATRIX FOR RANDOM EFFECTS - EPSILONS  ***


            EPS1   
 
 EPS1
+        6.85E-01
 
 #CPUT: Total CPU Time in Seconds,        6.875
Stop Time: 
Sun 01/15/2017 
08:13 PM