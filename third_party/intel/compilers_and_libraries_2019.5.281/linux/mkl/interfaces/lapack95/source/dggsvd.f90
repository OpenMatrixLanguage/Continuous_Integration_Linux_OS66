!===============================================================================
! Copyright 2005-2019 Intel Corporation.
!
! This software and the related documents are Intel copyrighted  materials,  and
! your use of  them is  governed by the  express license  under which  they were
! provided to you (License).  Unless the License provides otherwise, you may not
! use, modify, copy, publish, distribute,  disclose or transmit this software or
! the related documents without Intel's prior written permission.
!
! This software and the related documents  are provided as  is,  with no express
! or implied  warranties,  other  than those  that are  expressly stated  in the
! License.
!===============================================================================

!  Content:
!      F95 interface for LAPACK routines
!*******************************************************************************
! This file was generated automatically!
!*******************************************************************************

PURE SUBROUTINE DGGSVD_F95(A,B,ALPHA,BETA,K,L,U,V,Q,IWORK,INFO)
    ! Fortran77 call:
    ! DGGSVD(JOBU,JOBV,JOBQ,M,N,P,K,L,A,LDA,B,LDB,ALPHA,BETA,U,LDU,V,
    !   LDV,Q,LDQ,WORK,IWORK,INFO)
    ! <<< Use statements >>>
    USE F77_LAPACK, ONLY: F77_GGSVD, F77_XERBLA
    ! <<< Implicit statement >>>
    IMPLICIT NONE
    ! <<< Kind parameter >>>
    INTEGER, PARAMETER :: WP = KIND(1.0D0)
    ! <<< Scalar arguments >>>
    INTEGER, INTENT(OUT), OPTIONAL :: K
    INTEGER, INTENT(OUT), OPTIONAL :: L
    INTEGER, INTENT(OUT), OPTIONAL :: INFO
    ! <<< Array arguments >>>
    REAL(WP), INTENT(INOUT) :: A(:,:)
    REAL(WP), INTENT(INOUT) :: B(:,:)
    REAL(WP), INTENT(OUT) :: ALPHA(:)
    REAL(WP), INTENT(OUT) :: BETA(:)
    REAL(WP), INTENT(OUT), OPTIONAL, TARGET :: U(:,:)
    REAL(WP), INTENT(OUT), OPTIONAL, TARGET :: V(:,:)
    REAL(WP), INTENT(OUT), OPTIONAL, TARGET :: Q(:,:)
    INTEGER, INTENT(OUT), OPTIONAL, TARGET :: IWORK(:)
    ! <<< Local declarations >>>
    ! <<< Parameters >>>
    CHARACTER(LEN=5), PARAMETER :: SRNAME = 'GGSVD'
    ! <<< Local scalars >>>
    INTEGER :: O_K
    INTEGER :: O_L
    INTEGER :: O_INFO
    CHARACTER(LEN=1) :: JOBU
    CHARACTER(LEN=1) :: JOBV
    CHARACTER(LEN=1) :: JOBQ
    INTEGER :: M
    INTEGER :: N
    INTEGER :: P
    INTEGER :: LDA
    INTEGER :: LDB
    INTEGER :: LDU
    INTEGER :: LDV
    INTEGER :: LDQ
    INTEGER :: L_STAT_ALLOC, L_STAT_DEALLOC
    ! <<< Local arrays >>>
    REAL(WP), POINTER :: O_U(:,:)
    REAL(WP), POINTER :: O_V(:,:)
    REAL(WP), POINTER :: O_Q(:,:)
    INTEGER, POINTER :: O_IWORK(:)
    REAL(WP), POINTER :: WORK(:)
    ! <<< Stubs to "allocate" optional arrays >>>
    REAL(WP), TARGET :: L_A2_REAL(1,1)
    ! <<< Intrinsic functions >>>
    INTRINSIC MAX, PRESENT, SIZE
    ! <<< Executable statements >>>
    ! <<< Init optional and skipped scalars >>>
    IF(PRESENT(Q)) THEN
        JOBQ = 'Q'
    ELSE
        JOBQ = 'N'
    ENDIF
    IF(PRESENT(U)) THEN
        JOBU = 'U'
    ELSE
        JOBU = 'N'
    ENDIF
    IF(PRESENT(V)) THEN
        JOBV = 'V'
    ELSE
        JOBV = 'N'
    ENDIF
    LDA = MAX(1,SIZE(A,1))
    LDB = MAX(1,SIZE(B,1))
    IF(PRESENT(Q)) THEN
        LDQ = MAX(1,SIZE(Q,1))
    ELSE
        LDQ = 1
    ENDIF
    IF(PRESENT(U)) THEN
        LDU = MAX(1,SIZE(U,1))
    ELSE
        LDU = 1
    ENDIF
    IF(PRESENT(V)) THEN
        LDV = MAX(1,SIZE(V,1))
    ELSE
        LDV = 1
    ENDIF
    M = SIZE(A,1)
    N = SIZE(A,2)
    P = SIZE(B,1)
    ! <<< Init allocate status >>>
    L_STAT_ALLOC = 0
    ! <<< Allocate local and work arrays >>>
    IF(PRESENT(IWORK)) THEN
        O_IWORK => IWORK
    ELSE
        ALLOCATE(O_IWORK(N), STAT=L_STAT_ALLOC)
    ENDIF
    IF(PRESENT(Q)) THEN
        O_Q => Q
    ELSE
        O_Q => L_A2_REAL
    ENDIF
    IF(PRESENT(U)) THEN
        O_U => U
    ELSE
        O_U => L_A2_REAL
    ENDIF
    IF(PRESENT(V)) THEN
        O_V => V
    ELSE
        O_V => L_A2_REAL
    ENDIF
    IF(L_STAT_ALLOC==0) THEN
        ALLOCATE(WORK(MAX(3*N,M,P)+N), STAT=L_STAT_ALLOC)
    ENDIF
    ! <<< Call lapack77 routine >>>
    IF(L_STAT_ALLOC==0) THEN
        CALL F77_GGSVD(JOBU,JOBV,JOBQ,M,N,P,O_K,O_L,A,LDA,B,LDB,ALPHA,  &
     &                 BETA,O_U,LDU,O_V,LDV,O_Q,LDQ,WORK,O_IWORK,O_INFO)
    ELSE; O_INFO = -1000
    ENDIF
    ! <<< Set output optional scalar parameters >>>
    IF(PRESENT(K)) THEN
        K = O_K
    ENDIF
    IF(PRESENT(L)) THEN
        L = O_L
    ENDIF
    ! <<< Deallocate local and work arrays >>>
    IF(.NOT. PRESENT(IWORK)) THEN
        DEALLOCATE(O_IWORK, STAT=L_STAT_DEALLOC)
    ENDIF
    DEALLOCATE(WORK, STAT=L_STAT_DEALLOC)
    ! <<< Error handler >>>
    IF(PRESENT(INFO)) THEN
        INFO = O_INFO
    ELSEIF(O_INFO <= -1000) THEN
        CALL F77_XERBLA(SRNAME,-O_INFO)
    ENDIF
END SUBROUTINE DGGSVD_F95
