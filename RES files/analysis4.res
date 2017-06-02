Sun 01/15/2017 
04:42 PM
;Model Desc: basic two cmt random ka vc cl q
;Project Name: raltest
;Project ID: NO PROJECT DESCRIPTION

;Project ID: NO PROJECT DESCRIPTION
 
$PROB RUN# analysis4
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
   V3=TVV3*EXP(ETA(3))
   TVKA=THETA(5)
   KA=TVKA*EXP(ETA(4))
   S2=V2
 
$ERROR
   Y = F + F*ERR(1)+ERR(2)
 IPRE=F
 
$EST METHOD=1 INTERACTION PRINT=5 MAX=9999 SIG=3    MSFO=analysis4.msf 
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
  0.04 ;[P] omega(4,4)
$SIGMA
  0.04 ;[P] sigma(1,1)
  0.04 ;[A] sigma(2,2)
$COV
$TABLE ID TIME ONEHEADER NOPRINT FILE=analysis4.tab

  
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
 RUN# analysis4
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
0OMEGA HAS SIMPLE DIAGONAL FORM WITH DIMENSION:   4
0DEFAULT OMEGA BOUNDARY TEST OMITTED:    NO
0SIGMA HAS SIMPLE DIAGONAL FORM WITH DIMENSION:   2
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
 0.0000E+00   0.0000E+00   0.0000E+00   0.4000E-01
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   6762.95051829015        NO. OF FUNC. EVALS.:   9
 CUMULATIVE NO. OF FUNC. EVALS.:        9
 NPARAMETR:  6.4000E+01  1.3800E+02  9.3000E+00  1.4300E+02  6.5000E-01  4.0000E-02  4.0000E-02  4.0000E-02  4.0000E-02  4.0000E-02
             4.0000E-02
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.4983E+03  2.2906E+02  1.0539E+02  1.3394E+00 -1.6168E+02 -1.5831E+02 -1.1263E+02 -1.5450E+02 -1.2143E+02 -7.6730E+03
            -1.7329E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:   3435.35372607589        NO. OF FUNC. EVALS.:  10
 CUMULATIVE NO. OF FUNC. EVALS.:       61
 NPARAMETR:  8.9284E+01  1.0482E+02  9.5204E+00  2.5339E+02  8.3332E-01  2.5535E-01  8.7663E-02  1.4364E-01  1.4419E-01  9.6265E-01
             4.0175E-02
 PARAMETER:  4.3294E-01 -1.7503E-01  1.2342E-01  6.7209E-01  3.4844E-01  1.0269E+00  4.9231E-01  7.3920E-01  7.4112E-01  1.6904E+00
             1.0218E-01
 GRADIENT:   1.2161E+02 -6.5034E+00 -1.5295E+01  1.8691E+01  8.5936E+00 -6.3866E+00 -9.2990E+00 -1.4519E+01 -5.2725E+00 -5.9348E+01
             4.8544E-02

0ITERATION NO.:   10    OBJECTIVE VALUE:   3412.24101067947        NO. OF FUNC. EVALS.:  10
 CUMULATIVE NO. OF FUNC. EVALS.:      112
 NPARAMETR:  7.3762E+01  7.4831E+01  6.2811E+00  1.0595E+02  7.6421E-01  4.6416E+00  1.6463E-01  6.1849E-01  9.7748E-02  7.3241E-01
             9.8765E-02
 PARAMETER:  2.4196E-01 -5.1202E-01 -2.9247E-01 -1.9985E-01  2.6187E-01  2.4770E+00  8.0742E-01  1.4692E+00  5.4676E-01  1.5537E+00
             5.5193E-01
 GRADIENT:   3.5853E+01  4.0821E+00 -1.0130E+01 -6.8567E+00  4.1678E+00  5.3994E-01 -9.1023E+00  1.7218E+00 -3.7636E+00 -2.4781E+01
            -7.8934E-01

0ITERATION NO.:   15    OBJECTIVE VALUE:   3407.83084558042        NO. OF FUNC. EVALS.:  10
 CUMULATIVE NO. OF FUNC. EVALS.:      164
 NPARAMETR:  7.3102E+01  5.5663E+01  7.3643E+00  1.2072E+02  7.3624E-01  3.5219E+00  2.9309E-01  7.9035E-01  2.2340E-01  7.1833E-01
             6.8680E-01
 PARAMETER:  2.3298E-01 -8.0794E-01 -1.3338E-01 -6.9367E-02  2.2458E-01  2.3389E+00  1.0958E+00  1.5918E+00  9.6005E-01  1.5440E+00
             1.5216E+00
 GRADIENT:  -2.1179E+00  3.2257E+00  3.0332E+00 -1.0733E+00 -1.4090E+00 -8.6894E-01  1.8430E+00 -6.2225E-01  1.4344E-01 -1.5992E+01
            -3.6022E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:   3403.61897078188        NO. OF FUNC. EVALS.:  10
 CUMULATIVE NO. OF FUNC. EVALS.:      214
 NPARAMETR:  7.5406E+01  3.2834E+01  7.6800E+00  1.4485E+02  7.6428E-01  4.5236E+00  2.7330E-01  9.0380E-01  1.9008E-01  7.8060E-01
             1.2254E+00
 PARAMETER:  2.6401E-01 -1.3358E+00 -9.1395E-02  1.1288E-01  2.6196E-01  2.4641E+00  1.0608E+00  1.6589E+00  8.7928E-01  1.5856E+00
             1.8111E+00
 GRADIENT:   1.7809E+01  1.8002E+00 -5.6273E-02  2.9374E+00  6.5137E+00 -1.9398E+00  1.3683E+00 -1.4616E+00 -1.2706E+00 -5.3837E+00
             1.3311E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:   3403.36372783929        NO. OF FUNC. EVALS.:  12
 CUMULATIVE NO. OF FUNC. EVALS.:      268
 NPARAMETR:  7.5070E+01  3.0881E+01  7.5084E+00  1.4187E+02  7.5502E-01  4.3832E+00  2.7045E-01  8.7677E-01  2.0407E-01  7.7633E-01
             1.0343E+00
 PARAMETER:  2.5953E-01 -1.3971E+00 -1.1399E-01  9.2048E-02  2.4977E-01  2.4483E+00  1.0556E+00  1.6437E+00  9.1478E-01  1.5829E+00
             1.7263E+00
 GRADIENT:   1.6881E+01  1.5745E+00 -8.8187E-01  2.6624E+00  5.1604E+00 -2.3110E+00  9.8042E-01 -1.5376E+00 -5.2534E-01 -4.5095E+00
            -4.2667E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:   3403.27165110911        NO. OF FUNC. EVALS.:  40
 CUMULATIVE NO. OF FUNC. EVALS.:      376             RESET HESSIAN, TYPE I
 NPARAMETR:  7.5062E+01  2.5167E+01  7.5068E+00  1.4179E+02  7.5506E-01  4.3866E+00  2.7026E-01  8.7720E-01  2.0400E-01  7.7693E-01
             1.0347E+00
 PARAMETER:  2.5943E-01 -1.6017E+00 -1.1421E-01  9.1523E-02  2.4983E-01  2.4487E+00  1.0553E+00  1.6439E+00  9.1463E-01  1.5832E+00
             1.7265E+00
 GRADIENT:   1.7992E+01  6.8500E-01 -8.7466E-01  2.6546E+00  5.2753E+00 -2.8676E+00  9.8265E-01 -1.5212E+00 -5.5722E-01 -4.2396E+00
            -4.3172E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:   3403.21990504565        NO. OF FUNC. EVALS.:  17
 CUMULATIVE NO. OF FUNC. EVALS.:      469
 NPARAMETR:  7.4999E+01  2.4890E+01  7.5061E+00  1.4180E+02  7.5478E-01  4.5063E+00  2.7023E-01  8.8127E-01  2.0443E-01  7.9319E-01
             1.0341E+00
 PARAMETER:  2.5859E-01 -1.6128E+00 -1.1430E-01  9.1589E-02  2.4946E-01  2.4622E+00  1.0552E+00  1.6462E+00  9.1567E-01  1.5936E+00
             1.7262E+00
 GRADIENT:   8.0277E+00 -6.5526E-02 -6.2515E-01  2.7002E+00  4.7364E+00 -2.5987E+00  1.1261E+00 -1.4906E+00 -5.3164E-01  5.2492E+00
            -5.0790E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:   3402.95111122910        NO. OF FUNC. EVALS.:  19
 CUMULATIVE NO. OF FUNC. EVALS.:      561
 NPARAMETR:  7.4428E+01  2.6471E+01  7.5018E+00  1.4184E+02  7.5241E-01  6.2352E+00  2.6660E-01  9.4505E-01  2.0769E-01  7.6422E-01
             1.0458E+00
 PARAMETER:  2.5095E-01 -1.5512E+00 -1.1487E-01  9.1885E-02  2.4632E-01  2.6245E+00  1.0484E+00  1.6812E+00  9.2358E-01  1.5750E+00
             1.7318E+00
 GRADIENT:   1.2836E+01  6.0879E-01 -5.1228E-01  2.4466E+00  4.4895E+00  5.5756E-01  8.2215E-01 -5.1394E-01 -4.1017E-01 -6.0472E+00
            -4.1312E-01

0ITERATION NO.:   45    OBJECTIVE VALUE:   3402.85731096934        NO. OF FUNC. EVALS.:  17
 CUMULATIVE NO. OF FUNC. EVALS.:      658
 NPARAMETR:  7.4329E+01  2.1774E+01  7.5057E+00  1.4110E+02  7.5178E-01  6.5506E+00  2.6622E-01  9.5446E-01  2.0829E-01  7.7258E-01
             1.0467E+00
 PARAMETER:  2.4962E-01 -1.7465E+00 -1.1435E-01  8.6629E-02  2.4548E-01  2.6492E+00  1.0477E+00  1.6861E+00  9.2503E-01  1.5804E+00
             1.7323E+00
 GRADIENT:   8.4930E+00  8.2238E-01 -1.8798E-01  2.3694E+00  4.6109E+00  6.1510E-01  8.9111E-01 -3.5582E-01 -4.0498E-01  1.0372E+00
            -4.1975E-01

0ITERATION NO.:   50    OBJECTIVE VALUE:   3402.85645750179        NO. OF FUNC. EVALS.:  26
 CUMULATIVE NO. OF FUNC. EVALS.:      785
 NPARAMETR:  7.4330E+01  2.1773E+01  7.5076E+00  1.4107E+02  7.5176E-01  6.5484E+00  2.6619E-01  9.5426E-01  2.0832E-01  7.7243E-01
             1.0470E+00
 PARAMETER:  2.4963E-01 -1.7466E+00 -1.1409E-01  8.6388E-02  2.4545E-01  2.6490E+00  1.0477E+00  1.6860E+00  9.2509E-01  1.5803E+00
             1.7324E+00
 GRADIENT:  -5.8321E+03  8.3749E+02  1.2800E+04 -1.4601E+04 -5.9433E+03  2.7519E+02  6.9768E+02  8.6592E+02 -7.9011E+02  9.1631E+02
            -4.2193E+02

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:      785
 NO. OF SIG. DIGITS IN FINAL EST.:  3.3

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.7938E-01  2.0171E-02 -8.5601E-02  1.6563E-02
 SE:             5.3875E-01  1.1610E-01  2.5444E-01  8.6127E-02
 N:                      12          12          12          12

 P VAL.:         7.3917E-01  8.6207E-01  7.3655E-01  8.4750E-01

 ETAshrink(%):   2.3826E+01  1.8579E+01  5.7581E+00  3.1725E+01
 EBVshrink(%):   2.0708E+01  1.6850E+01  1.0761E+01  3.2024E+01
 EPSshrink(%):   1.7552E+00  1.7552E+00

 #TERE:
 Elapsed estimation time in seconds:    15.07
0R MATRIX ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
 BUT NONSINGULAR
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance time in seconds:     6.27
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************     3402.856       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5     
 
         7.43E+01  2.18E+01  7.51E+00  1.41E+02  7.52E-01
 


 OMEGA - COV MATRIX FOR RANDOM EFFECTS - ETAS  ********


            ETA1      ETA2      ETA3      ETA4   
 
 ETA1
+        6.55E+00
 
 ETA2
+        0.00E+00  2.66E-01
 
 ETA3
+        0.00E+00  0.00E+00  9.54E-01
 
 ETA4
+        0.00E+00  0.00E+00  0.00E+00  2.08E-01
 


 SIGMA - COV MATRIX FOR RANDOM EFFECTS - EPSILONS  ****


            EPS1      EPS2   
 
 EPS1
+        7.72E-01
 
 EPS2
+        0.00E+00  1.05E+00
 
1


 OMEGA - CORR MATRIX FOR RANDOM EFFECTS - ETAS  *******


            ETA1      ETA2      ETA3      ETA4   
 
 ETA1
+        2.56E+00
 
 ETA2
+        0.00E+00  5.16E-01
 
 ETA3
+        0.00E+00  0.00E+00  9.77E-01
 
 ETA4
+        0.00E+00  0.00E+00  0.00E+00  4.56E-01
 


 SIGMA - CORR MATRIX FOR RANDOM EFFECTS - EPSILONS  ***


            EPS1      EPS2   
 
 EPS1
+        8.79E-01
 
 EPS2
+        0.00E+00  1.02E+00
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                                     R MATRIX                                   ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      OM11      OM12      OM13      OM14      OM22      OM23      OM24  
             OM33      OM34      OM44      SG11      SG12      SG22  
 
 TH 1
+        1.06E+03
 
 TH 2
+        1.85E+00  2.53E+02
 
 TH 3
+       -1.21E+00  5.68E-01  4.98E+05
 
 TH 4
+       -1.78E-02  8.56E-03 -1.53E+00  1.83E+03
 
 TH 5
+       -3.71E+02  4.05E+01 -1.17E+02 -1.75E+00  1.07E+07
 
 OM11
+        4.57E+00 -2.42E+00 -1.02E+02  6.16E+00  4.69E+02 -2.16E+00
 
 OM12
+       ......... ......... ......... ......... ......... ......... .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... .........
 
 OM14
+       ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM22
+        1.85E+01 -9.50E+00 -4.11E+02  2.50E+01  1.91E+03 -9.71E+00 ......... ......... ......... -5.91E+02
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM24
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM33
+       -1.41E+00  7.98E-01  3.32E+01 -2.04E+00 -1.53E+02  7.16E-01 ......... ......... .........  4.98E+01 ......... .........
          1.32E+01
 
 OM34
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... .........
 
 OM44
+        4.76E+01 -2.55E+01 -1.06E+03  6.44E+01  4.89E+03 -2.27E+01 ......... ......... ......... -1.63E+03 ......... .........
         -2.84E+02 .........  2.47E+03
 
 SG11
+        2.32E+01 -7.14E+01  9.35E+00  1.18E-01  5.79E+02 -3.14E+01 ......... ......... ......... -1.30E+02 ......... .........
          9.60E+00 ......... -3.19E+02  6.04E+04
 
 SG12
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... .........
 
 SG22
+       -1.89E+01  9.97E-02 -5.95E+00 -7.92E-02 -2.02E+01  9.39E-02 ......... ......... .........  9.79E+01 ......... .........
         -8.25E+00 ......... -1.02E+01  7.94E-01 .........  2.77E+04
 
 #CPUT: Total CPU Time in Seconds,       21.016
Stop Time: 
Sun 01/15/2017 
04:43 PM
