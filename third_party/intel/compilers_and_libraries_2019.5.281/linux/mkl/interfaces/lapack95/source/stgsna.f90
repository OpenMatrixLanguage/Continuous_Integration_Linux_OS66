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

PURE SUBROUTINE STGSNA_F95(A,B,S,DIF,VL,VR,SELECT,M,INFO)
    ! Fortran77 call:
    ! STGSNA(JOB,HOWMNY,SELECT,N,A,LDA,B,LDB,VL,LDVL,VR,LDVR,S,DIF,MM,M,
    !   WORK,LWORK,IWORK,INFO)
    ! <<< Use statements >>>
    USE F77_LAPACK, ONLY: F77_TGSNA, F77_XERBLA
    ! <<< Implicit statement >>>
    IMPLICIT NONE
    ! <<< Kind parameter >>>
    INTEGER, PARAMETER :: WP = KIND(1.0E0)
    ! <<< Scalar arguments >>>
    INTEGER, INTENT(OUT), OPTIONAL :: M
    INTEGER, INTENT(OUT), OPTIONAL :: INFO
    ! <<< Array arguments >>>
    REAL(WP), INTENT(IN) :: A(:,:)
    REAL(WP), INTENT(IN) :: B(:,:)
    REAL(WP), INTENT(OUT), OPTIONAL, TARGET :: S(:)
    REAL(WP), INTENT(OUT), OPTIONAL, TARGET :: DIF(:)
    ! VL: INOUT intent instead of IN because PURE.
    REAL(WP), INTENT(INOUT), OPTIONAL, TARGET :: VL(:,:)
    ! VR: INOUT intent instead of IN because PURE.
    REAL(WP), INTENT(INOUT), OPTIONAL, TARGET :: VR(:,:)
    ! SELECT: INOUT intent instead of IN because PURE.
    LOGICAL, INTENT(INOUT), OPTIONAL, TARGET :: SELECT(:)
    ! <<< Local declarations >>>
    ! <<< Parameters >>>
    CHARACTER(LEN=5), PARAMETER :: SRNAME = 'TGSNA'
    ! <<< Local scalars >>>
    INTEGER :: O_M
    INTEGER :: O_INFO
    CHARACTER(LEN=1) :: JOB
    CHARACTER(LEN=1) :: HOWMNY
    INTEGER :: N
    INTEGER :: LDA
    INTEGER :: LDB
    INTEGER :: LDVL
    INTEGER :: LDVR
    INTEGER :: MM
    INTEGER :: LWORK
    INTEGER :: L_STAT_ALLOC, L_STAT_DEALLOC
    ! <<< Local arrays >>>
    REAL(WP), POINTER :: O_S(:)
    REAL(WP), POINTER :: O_DIF(:)
    REAL(WP), POINTER :: O_VL(:,:)
    REAL(WP), POINTER :: O_VR(:,:)
    LOGICAL, POINTER :: O_SELECT(:)
    REAL(WP), POINTER :: WORK(:)
    INTEGER, POINTER :: IWORK(:)
    ! <<< Arrays to request optimal sizes >>>
    REAL(WP) :: S_WORK(1)
    ! <<< Stubs to "allocate" optional arrays >>>
    LOGICAL, TARGET :: L_A1_LOGI(1)
    REAL(WP), TARGET :: L_A1_REAL(1)
    REAL(WP), TARGET :: L_A2_REAL(1,1)
    ! <<< Intrinsic functions >>>
    INTRINSIC MAX, PRESENT, SIZE
    ! <<< Executable statements >>>
    ! <<< Init optional and skipped scalars >>>
    IF(PRESENT(SELECT)) THEN
        HOWMNY = 'S'
    ELSE
        HOWMNY = 'A'
    ENDIF
    IF(PRESENT(S).AND.PRESENT(DIF)) THEN
        JOB = 'B'
    ELSEIF(PRESENT(S)) THEN
        JOB = 'E'
    ELSEIF(PRESENT(DIF)) THEN
        JOB = 'V'
    ELSE
        O_INFO=-1001; GOTO 1001
    ENDIF
    LDA = MAX(1,SIZE(A,1))
    LDB = MAX(1,SIZE(B,1))
    IF(PRESENT(VL)) THEN
        LDVL = MAX(1,SIZE(VL,1))
    ELSE
        LDVL = 1
    ENDIF
    IF(PRESENT(VR)) THEN
        LDVR = MAX(1,SIZE(VR,1))
    ELSE
        LDVR = 1
    ENDIF
    IF(PRESENT(S)) THEN
        MM = SIZE(S)
    ELSE
        MM = SIZE(DIF)
    ENDIF
    N = SIZE(A,2)
    ! <<< Init allocate status >>>
    L_STAT_ALLOC = 0
    ! <<< Allocate local and work arrays >>>
    IF(PRESENT(DIF)) THEN
        O_DIF => DIF
    ELSE
        O_DIF => L_A1_REAL
    ENDIF
    IF(PRESENT(S)) THEN
        O_S => S
    ELSE
        O_S => L_A1_REAL
    ENDIF
    IF(PRESENT(SELECT)) THEN
        O_SELECT => SELECT
    ELSE
        O_SELECT => L_A1_LOGI
    ENDIF
    IF(PRESENT(VL)) THEN
        O_VL => VL
    ELSE
        O_VL => L_A2_REAL
    ENDIF
    IF(PRESENT(VR)) THEN
        O_VR => VR
    ELSE
        O_VR => L_A2_REAL
    ENDIF
    ALLOCATE(IWORK(N+6), STAT=L_STAT_ALLOC)
    ! <<< Request work array(s) size >>>
    LWORK = -1
    CALL F77_TGSNA(JOB,HOWMNY,O_SELECT,N,A,LDA,B,LDB,O_VL,LDVL,O_VR,    &
     &                  LDVR,O_S,O_DIF,MM,O_M,S_WORK,LWORK,IWORK,O_INFO)
    ! <<< Exit if error: bad parameters >>>
    IF(O_INFO /= 0) THEN
        GOTO 200
    ENDIF
    LWORK = S_WORK(1)
    ! <<< Allocate work arrays with requested sizes >>>
    IF(L_STAT_ALLOC==0) THEN
        ALLOCATE(WORK(LWORK), STAT=L_STAT_ALLOC)
    ENDIF
    ! <<< Call lapack77 routine >>>
    IF(L_STAT_ALLOC==0) THEN
        CALL F77_TGSNA(JOB,HOWMNY,O_SELECT,N,A,LDA,B,LDB,O_VL,LDVL,O_VR,&
     &                    LDVR,O_S,O_DIF,MM,O_M,WORK,LWORK,IWORK,O_INFO)
    ELSE; O_INFO = -1000
    ENDIF
    ! <<< Set output optional scalar parameters >>>
    IF(PRESENT(M)) THEN
        M = O_M
    ENDIF
    ! <<< Deallocate work arrays with requested sizes >>>
    DEALLOCATE(WORK, STAT=L_STAT_DEALLOC)
200    CONTINUE
    ! <<< Deallocate local and work arrays >>>
    DEALLOCATE(IWORK, STAT=L_STAT_DEALLOC)
1001    CONTINUE
    ! <<< Error handler >>>
    IF(PRESENT(INFO)) THEN
        INFO = O_INFO
    ELSEIF(O_INFO <= -1000) THEN
        CALL F77_XERBLA(SRNAME,-O_INFO)
    ENDIF
END SUBROUTINE STGSNA_F95
