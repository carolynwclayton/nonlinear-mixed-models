Sun 01/15/2017 
08:12 PM
;Model Desc: basic two cmt additive shift trt cl linear weight cl random vc cl q
;Project Name: raltest
;Project ID: NO PROJECT DESCRIPTION

;Project ID: NO PROJECT DESCRIPTION
 
$PROB RUN# analysis27
$INPUT C ID TREAT TIME DV AMT EVID sex race weight height age HC
$DATA RAL_FOR_NONMEM.CSV IGNORE=C
$SUBROUTINES ADVAN4 TRANS4
$PK
   TVCL=THETA(1)
   CL=TVCL*EXP(ETA(1))*(weight**THETA(7))+THETA(6)*TREAT
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
 
$EST METHOD=1 INTERACTION PRINT=5 MAX=9999 SIG=3    MSFO=analysis27.msf 
$THETA 
  (0, 104);[CL]
  (0, 102);[V2]
  (0, 14.5);[Q]
  (0, 668);[V3]
  (0, 0.481);[KA]
  5;[trt]
  0.1;[wt]
$OMEGA
  0.4 ;[P] omega(1,1)
  0.4 ;[P] omega(2,2)
  0.4 ;[P] omega(3,3)
  0.4 ;[P] omega(4,4)
$SIGMA
  0.4 ;[P] sigma(1,1)
$COV
$TABLE ID TIME ONEHEADER NOPRINT FILE=analysis27.tab

  
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
 RUN# analysis27
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
 0.4000E+00
 0.0000E+00   0.4000E+00
 0.0000E+00   0.0000E+00   0.4000E+00
 0.0000E+00   0.0000E+00   0.0000E+00   0.4000E+00
0INITIAL ESTIMATE OF SIGMA:
 0.4000E+00
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   3276.73924588106        NO. OF FUNC. EVALS.:  10
 CUMULATIVE NO. OF FUNC. EVALS.:       10
 NPARAMETR:  1.0400E+02  1.0200E+02  1.4500E+01  6.6800E+02  4.8100E-01  5.0000E+00  1.0000E-01  4.0000E-01  4.0000E-01  4.0000E-01
             4.0000E-01  4.0000E-01
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01  1.0000E-01
 GRADIENT:   3.1474E+01 -3.7198E+00 -4.0524E-01  8.0797E+00 -9.5369E+00 -2.4191E+02  1.3272E+02 -1.1520E+01  1.9966E+00 -8.6012E+00
             1.4649E+01 -1.1645E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:   3157.07047430824        NO. OF FUNC. EVALS.:  11
 CUMULATIVE NO. OF FUNC. EVALS.:       69
 NPARAMETR:  1.0118E+02  1.0957E+02  1.0306E+01  4.4519E+02  6.2813E-01  4.4787E+01 -7.3210E-02  2.9143E-01  3.5258E-01  2.6859E-01
             8.2986E-02  3.0651E-01
 PARAMETER:  7.2466E-02  1.7161E-01 -2.4140E-01 -3.0579E-01  3.6687E-01  8.9575E-01 -7.3210E-02 -5.8324E-02  3.6913E-02 -9.9148E-02
            -6.8639E-01 -3.3103E-02
 GRADIENT:   2.7447E+00  6.8131E+00 -1.0726E+01  1.3113E+01 -1.5136E+00 -1.0350E+01  1.2003E+01 -1.4052E+00 -1.6339E+00 -1.9874E+00
             2.5414E+00 -1.1823E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:   3146.79142820212        NO. OF FUNC. EVALS.:  11
 CUMULATIVE NO. OF FUNC. EVALS.:      128
 NPARAMETR:  1.0165E+02  8.3034E+01  1.0294E+01  3.4127E+02  5.9237E-01  4.7647E+01 -7.3440E-02  2.4495E-01  4.1597E-01  2.0650E-01
             5.6506E-02  3.8994E-01
 PARAMETER:  7.7143E-02 -1.0573E-01 -2.4260E-01 -5.7161E-01  3.0827E-01  9.5293E-01 -7.3440E-02 -1.4520E-01  1.1957E-01 -2.3059E-01
            -8.7856E-01  8.7268E-02
 GRADIENT:   6.9607E-01 -4.0138E+00 -4.0299E+00 -9.6274E-01 -5.2435E+00 -1.1341E+01  2.3650E+00 -2.6443E+00 -4.9051E-01  7.4467E-01
             2.2499E+00 -1.5744E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:   3145.13672024886        NO. OF FUNC. EVALS.:  11
 CUMULATIVE NO. OF FUNC. EVALS.:      185
 NPARAMETR:  7.9790E+01  9.5662E+01  1.1471E+01  3.7433E+02  5.9520E-01  5.0735E+01 -1.0363E-02  2.7482E-01  3.8418E-01  2.0072E-01
             4.4218E-02  4.2178E-01
 PARAMETER: -1.6500E-01  3.5852E-02 -1.3432E-01 -4.7916E-01  3.1303E-01  1.0147E+00 -1.0363E-02 -8.7680E-02  7.9820E-02 -2.4478E-01
            -1.0012E+00  1.2651E-01
 GRADIENT:   1.3853E-01  1.3483E-02  3.5757E-02  2.3752E-02  8.1866E-02  5.2438E-03 -2.6036E-01 -8.8664E-03 -5.4912E-02  2.9640E-02
            -1.5490E-02  1.7046E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:   3145.06477962472        NO. OF FUNC. EVALS.:  27
 CUMULATIVE NO. OF FUNC. EVALS.:      264
 NPARAMETR:  7.1743E+01  9.6130E+01  1.1500E+01  3.7623E+02  5.9554E-01  5.0929E+01  1.4588E-02  2.7259E-01  3.8235E-01  2.0321E-01
             4.3896E-02  4.2283E-01
 PARAMETER: -2.7130E-01  4.0725E-02 -1.3182E-01 -4.7409E-01  3.1360E-01  1.0186E+00  1.4588E-02 -9.1742E-02  7.7430E-02 -2.3862E-01
            -1.0048E+00  1.2775E-01
 GRADIENT:  -4.5909E-01  1.0979E-01 -4.7761E-02  8.6262E-02 -2.8618E-02  6.1615E-01 -4.9091E+00 -6.2239E-02 -8.3375E-02  2.0210E-01
            -1.0384E-01  4.7138E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:   3145.06377482055        NO. OF FUNC. EVALS.:  19
 CUMULATIVE NO. OF FUNC. EVALS.:      370
 NPARAMETR:  7.1753E+01  9.5826E+01  1.1499E+01  3.7632E+02  5.9544E-01  5.0903E+01  1.4638E-02  2.7355E-01  3.8602E-01  2.0316E-01
             4.3940E-02  4.2288E-01
 PARAMETER: -2.7116E-01  3.7558E-02 -1.3189E-01 -4.7385E-01  3.1344E-01  1.0181E+00  1.4638E-02 -8.9984E-02  8.2210E-02 -2.3874E-01
            -1.0043E+00  1.2781E-01
 GRADIENT:  -4.2729E-01 -2.1387E-03 -4.6187E-02  1.1531E-01 -4.5780E-02  4.5521E-01 -4.7687E+00 -4.3335E-05 -4.9045E-04  1.8977E-01
            -8.6519E-02  6.5909E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:   3145.05360552595        NO. OF FUNC. EVALS.:  12
 CUMULATIVE NO. OF FUNC. EVALS.:      443
 NPARAMETR:  7.0890E+01  9.5460E+01  1.1473E+01  3.7503E+02  5.9486E-01  5.0729E+01  1.7746E-02  2.7322E-01  3.8572E-01  2.0316E-01
             4.3940E-02  4.2156E-01
 PARAMETER: -2.8326E-01  3.3733E-02 -1.3415E-01 -4.7728E-01  3.1245E-01  1.0146E+00  1.7746E-02 -9.0592E-02  8.1829E-02 -2.3874E-01
            -1.0043E+00  1.2625E-01
 GRADIENT:   2.8123E-01 -3.7903E-02  3.5447E-02  3.7436E-02  7.8279E-02  1.9178E-02 -6.4328E-01  3.9908E-03 -1.0615E-02  2.0546E-01
            -5.8624E-02  8.4605E-02

0ITERATION NO.:   35    OBJECTIVE VALUE:   3145.02568192713        NO. OF FUNC. EVALS.:  11
 CUMULATIVE NO. OF FUNC. EVALS.:      501
 NPARAMETR:  5.6774E+01  9.4300E+01  1.1254E+01  3.6830E+02  5.9317E-01  5.0412E+01  6.1023E-02  2.6992E-01  3.8853E-01  2.0316E-01
             4.3941E-02  4.1744E-01
 PARAMETER: -5.0531E-01  2.1505E-02 -1.5339E-01 -4.9540E-01  3.0961E-01  1.0082E+00  6.1023E-02 -9.6674E-02  8.5458E-02 -2.3874E-01
            -1.0043E+00  1.2133E-01
 GRADIENT:  -2.4627E+00  3.2451E-03 -5.5794E-01 -3.1446E-01 -1.2001E+00 -1.3566E+00 -1.3917E+01 -6.3470E-02  3.0194E-02  4.0402E-01
            -4.0877E-03 -4.2527E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:   3144.90660107165        NO. OF FUNC. EVALS.:  23
 CUMULATIVE NO. OF FUNC. EVALS.:      608
 NPARAMETR:  5.2381E+01  9.4751E+01  1.1243E+01  3.6844E+02  5.9581E-01  5.0366E+01  8.4380E-02  2.6821E-01  3.9000E-01  2.0316E-01
             4.3941E-02  4.1838E-01
 PARAMETER: -5.8584E-01  2.6278E-02 -1.5439E-01 -4.9501E-01  3.1406E-01  1.0073E+00  8.4380E-02 -9.9852E-02  8.7335E-02 -2.3874E-01
            -1.0043E+00  1.2246E-01
 GRADIENT:  -2.1646E+00 -5.7622E-02 -8.9639E-01 -2.6034E-01 -5.2145E-01 -1.6682E+00 -1.1931E+01  2.8844E-02  3.4695E-02  3.8241E-01
            -1.4150E-01 -2.1915E-01

0ITERATION NO.:   45    OBJECTIVE VALUE:   3144.89561329231        NO. OF FUNC. EVALS.:  48
 CUMULATIVE NO. OF FUNC. EVALS.:      762             RESET HESSIAN, TYPE I
 NPARAMETR:  5.1676E+01  9.4743E+01  1.1240E+01  3.6853E+02  5.9569E-01  5.0313E+01  8.7934E-02  2.6719E-01  3.8708E-01  2.0306E-01
             4.4029E-02  4.1847E-01
 PARAMETER: -5.9941E-01  2.6199E-02 -1.5470E-01 -4.9476E-01  3.1385E-01  1.0063E+00  8.7934E-02 -1.0175E-01  8.3585E-02 -2.3898E-01
            -1.0033E+00  1.2257E-01
 GRADIENT:  -8.4551E-01 -4.3683E-02 -8.5781E-01 -1.4861E-01 -8.2747E-02 -1.6683E+00 -7.9756E+00 -2.3368E-02 -3.1492E-02  3.5640E-01
            -1.0615E-01 -1.1389E-02

0ITERATION NO.:   50    OBJECTIVE VALUE:   3144.82461682429        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:      845
 NPARAMETR:  5.1015E+01  9.5334E+01  1.1456E+01  3.7446E+02  5.9517E-01  5.0839E+01  9.5930E-02  2.6690E-01  3.8860E-01  2.0306E-01
             4.4030E-02  4.2131E-01
 PARAMETER: -6.1228E-01  3.2414E-02 -1.3566E-01 -4.7881E-01  3.1297E-01  1.0168E+00  9.5930E-02 -1.0230E-01  8.5548E-02 -2.3898E-01
            -1.0033E+00  1.2595E-01
 GRADIENT:   6.9310E-01 -6.3369E-02 -4.9903E-02  1.1612E-01  2.1186E-01  5.5378E-01 -1.6642E+00 -6.0180E-02  2.9374E-02  2.5603E-01
            -6.1882E-02 -1.7567E-01

0ITERATION NO.:   55    OBJECTIVE VALUE:   3144.81861913869        NO. OF FUNC. EVALS.:  42
 CUMULATIVE NO. OF FUNC. EVALS.:      949             RESET HESSIAN, TYPE I
 NPARAMETR:  5.0836E+01  9.5437E+01  1.1475E+01  3.7503E+02  5.9487E-01  5.0805E+01  9.7442E-02  2.6801E-01  3.8827E-01  2.0296E-01
             4.4118E-02  4.2171E-01
 PARAMETER: -6.1579E-01  3.3496E-02 -1.3397E-01 -4.7729E-01  3.1248E-01  1.0161E+00  9.7442E-02 -1.0022E-01  8.5124E-02 -2.3922E-01
            -1.0023E+00  1.2643E-01
 GRADIENT:   8.9127E-01 -4.1773E-02  2.9501E-02  1.1818E-01  4.2750E-02  3.2133E-01 -8.5534E-01  2.7940E-02  3.3076E-02  2.2050E-01
            -2.4948E-02  7.2078E-02

0ITERATION NO.:   60    OBJECTIVE VALUE:   3144.81183452929        NO. OF FUNC. EVALS.:  11
 CUMULATIVE NO. OF FUNC. EVALS.:     1028
 NPARAMETR:  5.0767E+01  9.5849E+01  1.1478E+01  3.7473E+02  5.9550E-01  5.0777E+01  9.9359E-02  2.6761E-01  3.8827E-01  2.0296E-01
             4.4118E-02  4.2182E-01
 PARAMETER: -6.1714E-01  3.7801E-02 -1.3371E-01 -4.7807E-01  3.1353E-01  1.0155E+00  9.9359E-02 -1.0097E-01  8.5124E-02 -2.3922E-01
            -1.0023E+00  1.2655E-01
 GRADIENT:   1.4341E+00  8.0730E-02  2.1572E-02  4.9438E-02  1.8913E-01  2.6123E-01  1.3891E+00  1.7721E-02  4.1170E-02  2.2944E-01
            -7.1531E-02 -1.1511E-01

0ITERATION NO.:   65    OBJECTIVE VALUE:   3144.81176965691        NO. OF FUNC. EVALS.:  20
 CUMULATIVE NO. OF FUNC. EVALS.:     1151
 NPARAMETR:  5.0769E+01  9.5814E+01  1.1478E+01  3.7474E+02  5.9549E-01  5.0774E+01  9.9364E-02  2.6743E-01  3.8686E-01  2.0296E-01
             4.4123E-02  4.2182E-01
 PARAMETER: -6.1710E-01  3.7437E-02 -1.3372E-01 -4.7805E-01  3.1351E-01  1.0155E+00  9.9364E-02 -1.0131E-01  8.3295E-02 -2.3923E-01
            -1.0022E+00  1.2656E-01
 GRADIENT:   1.7478E-01  1.6033E-02 -3.5103E-02 -2.5592E-02 -2.7660E-01 -2.6387E-03 -2.1797E+00  7.0437E-03  3.0926E-03  2.2733E-01
            -6.5141E-02 -1.8901E-01

0ITERATION NO.:   70    OBJECTIVE VALUE:   3144.80349970684        NO. OF FUNC. EVALS.:  11
 CUMULATIVE NO. OF FUNC. EVALS.:     1230
 NPARAMETR:  4.9830E+01  9.5710E+01  1.1477E+01  3.7492E+02  5.9530E-01  5.0723E+01  1.0246E-01  2.6729E-01  3.8655E-01  2.0296E-01
             4.4123E-02  4.2181E-01
 PARAMETER: -6.3578E-01  3.6348E-02 -1.3379E-01 -4.7756E-01  3.1320E-01  1.0145E+00  1.0246E-01 -1.0157E-01  8.2897E-02 -2.3923E-01
            -1.0022E+00  1.2655E-01
 GRADIENT:   9.7811E-01  4.0238E-02  5.1944E-02  1.0019E-01  1.1786E-01 -7.4791E-02 -5.7543E-01  5.1512E-03  2.4639E-03  2.0679E-01
            -5.0472E-02  2.5125E-01

0ITERATION NO.:   75    OBJECTIVE VALUE:   3144.79564987502        NO. OF FUNC. EVALS.:  14
 CUMULATIVE NO. OF FUNC. EVALS.:     1289
 NPARAMETR:  4.7041E+01  9.5376E+01  1.1451E+01  3.7494E+02  5.9529E-01  5.0720E+01  1.1189E-01  2.6712E-01  3.8691E-01  2.0296E-01
             4.4123E-02  4.2046E-01
 PARAMETER: -6.9337E-01  3.2859E-02 -1.3607E-01 -4.7753E-01  3.1318E-01  1.0144E+00  1.1189E-01 -1.0188E-01  8.3358E-02 -2.3923E-01
            -1.0022E+00  1.2494E-01
 GRADIENT:  -3.6529E-01  1.0670E-02 -1.2986E-02  2.6043E-01  1.1771E-01 -7.1976E-02 -6.3035E+00 -4.6530E-03 -6.7063E-03  1.8684E-01
            -5.2012E-02 -7.8896E-03

0ITERATION NO.:   79    OBJECTIVE VALUE:   3144.79527940625        NO. OF FUNC. EVALS.:  31
 CUMULATIVE NO. OF FUNC. EVALS.:     1379
 NPARAMETR:  4.6983E+01  9.5373E+01  1.1451E+01  3.7494E+02  5.9529E-01  5.0720E+01  1.1214E-01  2.6711E-01  3.8691E-01  2.0296E-01
             4.4123E-02  4.2045E-01
 PARAMETER: -6.9461E-01  3.2818E-02 -1.3610E-01 -4.7753E-01  3.1318E-01  1.0144E+00  1.1214E-01 -1.0189E-01  8.3368E-02 -2.3923E-01
            -1.0022E+00  1.2493E-01
 GRADIENT:  -4.6185E+02  6.3909E+03  4.6924E+03 -1.3338E+03  2.0351E+03  6.2805E+02 -2.8599E+03 -4.2805E-03 -3.1957E+03  1.3355E+03
            -3.1774E+02 -2.5583E+03

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1379
 NO. OF SIG. DIGITS IN FINAL EST.:  3.0

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.2957E-02  2.7423E-02 -2.3047E-02  1.4112E-02
 SE:             1.4469E-01  1.4832E-01  1.1966E-01  4.8025E-02
 N:                      12          12          12          12

 P VAL.:         9.2865E-01  8.5331E-01  8.4727E-01  7.6888E-01

 ETAshrink(%):   1.0000E-10  1.3726E+01  3.8973E+00  1.7277E+01
 EBVshrink(%):   2.5621E+00  1.4528E+01  1.0224E+01  2.3935E+01
 EPSshrink(%):   3.3416E+00

 #TERE:
 Elapsed estimation time in seconds:    19.98
0R MATRIX ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
 BUT NONSINGULAR
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance time in seconds:     6.42
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************     3144.795       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7     
 
         4.70E+01  9.54E+01  1.15E+01  3.75E+02  5.95E-01  5.07E+01  1.12E-01
 


 OMEGA - COV MATRIX FOR RANDOM EFFECTS - ETAS  ********


            ETA1      ETA2      ETA3      ETA4   
 
 ETA1
+        2.67E-01
 
 ETA2
+        0.00E+00  3.87E-01
 
 ETA3
+        0.00E+00  0.00E+00  2.03E-01
 
 ETA4
+        0.00E+00  0.00E+00  0.00E+00  4.41E-02
 


 SIGMA - COV MATRIX FOR RANDOM EFFECTS - EPSILONS  ****


            EPS1   
 
 EPS1
+        4.20E-01
 
1


 OMEGA - CORR MATRIX FOR RANDOM EFFECTS - ETAS  *******


            ETA1      ETA2      ETA3      ETA4   
 
 ETA1
+        5.17E-01
 
 ETA2
+        0.00E+00  6.22E-01
 
 ETA3
+        0.00E+00  0.00E+00  4.51E-01
 
 ETA4
+        0.00E+00  0.00E+00  0.00E+00  2.10E-01
 


 SIGMA - CORR MATRIX FOR RANDOM EFFECTS - EPSILONS  ***


            EPS1   
 
 EPS1
+        6.48E-01
 
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
+        1.50E+02
 
 TH 2
+        1.09E-01  1.76E+03
 
 TH 3
+        3.11E-01 -2.29E+00  6.57E+04
 
 TH 4
+       -2.83E-03  2.00E-02  9.58E-01  4.95E+00
 
 TH 5
+        2.74E+00 -1.95E+01 -9.25E+02  3.22E+01  4.57E+06
 
 TH 6
+        1.20E-02 -7.07E-02 -3.41E+00  9.54E-02 -9.11E+01  6.18E+01
 
 TH 7
+        8.92E-01  3.18E+01  5.86E+01 -5.38E-01  5.21E+02  2.29E+00  1.27E+07
 
 OM11
+       -1.27E+00  4.60E+00  2.81E+01 -2.63E-01  2.39E+02  9.03E-01 -3.72E+02  7.47E+01
 
 OM12
+       ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM14
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM22
+       -3.96E+00  1.35E+01  8.26E+01 -7.15E-01  6.77E+02  2.47E+00 -1.15E+03 -2.59E+00 ......... ......... ......... -1.65E+03
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         .........
 
 OM24
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... .........
 
 OM33
+        3.71E+01 -1.27E+02 -7.78E+02  6.73E+00 -6.55E+03 -2.38E+01  1.08E+04  9.84E-02 ......... ......... .........  1.57E+04
         ......... ......... -1.24E+04
 
 OM34
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... .........
 
 OM44
+       -4.07E+02  1.39E+03  8.53E+03 -7.42E+01  7.12E+04  2.62E+02 -1.18E+05 -1.52E+00 ......... ......... ......... -1.72E+05
         ......... .........  1.37E+05 ......... -1.49E+05
 
 SG11
+        3.09E+00  3.39E+01 -7.60E+01  6.42E-01 -5.89E+02 -3.62E+00  9.49E+02 -4.13E+02 ......... ......... ......... -1.22E+03
         ......... ......... -1.20E+03 .........  1.36E+03  1.45E+07
 
 #CPUT: Total CPU Time in Seconds,       25.281
Stop Time: 
Sun 01/15/2017 
08:12 PM