      SUBROUTINE STEPS(EPS)
c
c23456789012345678901234567890123456789012345678901234567890123456789012
c
C*** COMPUTES 8 DIMENSIONLESS STEP SIZES FOR RKS INTEGRATION
c
c    calls no other routines
c
      IMPLICIT REAL*8(A-H,O-Z)
      COMMON/SHANKS/B(46),C(10),DX,STEP(8),STEPF,IN,MAXO
c
      PS=DLOG(EPS)
      FAC=1.D0
      DO 2 N=1,8
      FN=N+1
      FAC=FAC*FN
      X=(DLOG(FAC)+PS)/FN
      X=DEXP(X)
      S=X
      DO 1 I=1,N
    1 S=X*DEXP(-S/FN)
    2 STEP(N)=S
c
      RETURN
      END
