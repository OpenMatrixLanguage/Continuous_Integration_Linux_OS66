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

PURE SUBROUTINE SSYGVX_F95(A,B,W,ITYPE,UPLO,Z,VL,VU,IL,IU,M,IFAIL,      &
     &                                                      ABSTOL,INFO)
    ! Fortran77 call:
    ! SSYGVX(ITYPE,JOBZ,RANGE,UPLO,N,A,LDA,B,LDB,VL,VU,IL,IU,ABSTOL,M,W,
    !   Z,LDZ,WORK,LWORK,IWORK,IFAIL,INFO)
    ! ITYPE=1,2,3; default: 1
    ! UPLO='U','L'; default: 'U'
    ! Default VL=-HUGE(VL)
    ! Default VU=HUGE(VL)
    ! Default IL=1
    ! Default IU=N
    ! Default ABSTOL=0.0_WP
    ! <<< Use statements >>>
    USE F77_LAPACK, ONLY: F77_SYGVX, F77_XERBLA
    ! <<< Implicit statement >>>
    IMPLICIT NONE
    ! <<< Kind parameter >>>
    INTEGER, PARAMETER :: WP = KIND(1.0E0)
    ! <<< Scalar arguments >>>
    INTEGER, INTENT(IN), OPTIONAL :: ITYPE
    CHARACTER(LEN=1), INTENT(IN), OPTIONAL :: UPLO
    REAL(WP), INTENT(IN), OPTIONAL :: VL
    REAL(WP), INTENT(IN), OPTIONAL :: VU
    INTEGER, INTENT(IN), OPTIONAL :: IL
    INTEGER, INTENT(IN), OPTIONAL :: IU
    INTEGER, INTENT(OUT), OPTIONAL :: M
    REAL(WP), INTENT(IN), OPTIONAL :: ABSTOL
    INTEGER, INTENT(OUT), OPTIONAL :: INFO
    ! <<< Array arguments >>>
    REAL(WP), INTENT(INOUT) :: A(:,:)
    REAL(WP), INTENT(INOUT) :: B(:,:)
    REAL(WP), INTENT(OUT) :: W(:)
    REAL(WP), INTENT(OUT), OPTIONAL, TARGET :: Z(:,:)
    INTEGER, INTENT(OUT), OPTIONAL, TARGET :: IFAIL(:)
    ! <<< Local declarations >>>
    ! <<< Parameters >>>
    CHARACTER(LEN=5), PARAMETER :: SRNAME = 'SYGVX'
    ! <<< Local scalars >>>
    INTEGER :: O_ITYPE
    CHARACTER(LEN=1) :: O_UPLO
    REAL(WP) :: O_VL
    REAL(WP) :: O_VU
    INTEGER :: O_IL
    INTEGER :: O_IU
    INTEGER :: O_M
    REAL(WP) :: O_ABSTOL
    INTEGER :: O_INFO
    CHARACTER(LEN=1) :: JOBZ
    CHARACTER(LEN=1) :: RANGE
    INTEGER :: N
    INTEGER :: LDA
    INTEGER :: LDB
    INTEGER :: LDZ
    INTEGER :: LWORK
    INTEGER :: L_STAT_ALLOC, L_STAT_DEALLOC
    ! <<< Local arrays >>>
    REAL(WP), POINTER :: O_Z(:,:)
    INTEGER, POINTER :: O_IFAIL(:)
    REAL(WP), POINTER :: WORK(:)
    INTEGER, POINTER :: IWORK(:)
    ! <<< Arrays to request optimal sizes >>>
    REAL(WP) :: S_WORK(1)
    ! <<< Stubs to "allocate" optional arrays >>>
    INTEGER, TARGET :: L_A1_INTE(1)
    REAL(WP), TARGET :: L_A2_REAL(1,1)
    ! <<< Intrinsic functions >>>
    INTRINSIC HUGE, MAX, PRESENT, SIZE
    ! <<< Executable statements >>>
    ! <<< Init optional and skipped scalars >>>
    IF(PRESENT(ABSTOL)) THEN
        O_ABSTOL = ABSTOL
    ELSE
        O_ABSTOL = 0.0_WP
    ENDIF
    IF(PRESENT(IL)) THEN
        O_IL = IL
    ELSE
        O_IL = 1
    ENDIF
    IF(PRESENT(ITYPE)) THEN
        O_ITYPE = ITYPE
    ELSE
        O_ITYPE = 1
    ENDIF
    IF(PRESENT(UPLO)) THEN
        O_UPLO = UPLO
    ELSE
        O_UPLO = 'U'
    ENDIF
    IF(PRESENT(VL)) THEN
        O_VL = VL
    ELSE
        O_VL = -HUGE(VL)
    ENDIF
    IF(PRESENT(VU)) THEN
        O_VU = VU
    ELSE
        O_VU = HUGE(VL)
    ENDIF
    IF(PRESENT(Z)) THEN
        JOBZ = 'V'
    ELSE
        JOBZ = 'N'
    ENDIF
    LDA = MAX(1,SIZE(A,1))
    LDB = MAX(1,SIZE(B,1))
    IF(PRESENT(Z)) THEN
        LDZ = MAX(1,SIZE(Z,1))
    ELSE
        LDZ = 1
    ENDIF
    N = SIZE(A,2)
    IF((PRESENT(VL).OR.PRESENT(VU)).AND.                                &
     &(PRESENT(IL).OR.PRESENT(IU))) THEN
        O_INFO=-1001; GOTO 1001
    ELSEIF((PRESENT(VL).OR.PRESENT(VU))) THEN
        RANGE = 'V'
    ELSEIF((PRESENT(IL).OR.PRESENT(IU))) THEN
        RANGE = 'I'
    ELSE
        RANGE = 'A'
    ENDIF
    IF(PRESENT(IU)) THEN
        O_IU = IU
    ELSE
        O_IU = N
    ENDIF
    ! <<< Init allocate status >>>
    L_STAT_ALLOC = 0
    ! <<< Allocate local and work arrays >>>
    IF(.NOT.PRESENT(Z)) THEN
        IF(PRESENT(IFAIL)) THEN
            O_INFO=-1001; GOTO 1001
        ELSE
            O_IFAIL => L_A1_INTE
        ENDIF
    ELSE
        IF(PRESENT(IFAIL)) THEN
            O_IFAIL => IFAIL
        ELSE
            ALLOCATE(O_IFAIL(N), STAT=L_STAT_ALLOC)
        ENDIF
    ENDIF
    IF(PRESENT(Z)) THEN
        O_Z => Z
    ELSE
        O_Z => L_A2_REAL
    ENDIF
    IF(L_STAT_ALLOC==0) THEN
        ALLOCATE(IWORK(5*N), STAT=L_STAT_ALLOC)
    ENDIF
    ! <<< Request work array(s) size >>>
    LWORK = -1
    CALL F77_SYGVX(O_ITYPE,JOBZ,RANGE,O_UPLO,N,A,LDA,B,LDB,O_VL,O_VU,   &
     &     O_IL,O_IU,O_ABSTOL,O_M,W,O_Z,LDZ,S_WORK,LWORK,IWORK,O_IFAIL, &
     &                                                           O_INFO)
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
        CALL F77_SYGVX(O_ITYPE,JOBZ,RANGE,O_UPLO,N,A,LDA,B,LDB,O_VL,    &
     &  O_VU,O_IL,O_IU,O_ABSTOL,O_M,W,O_Z,LDZ,WORK,LWORK,IWORK,O_IFAIL, &
     &                                                           O_INFO)
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
    IF(PRESENT(Z) .AND..NOT. PRESENT(IFAIL)) THEN
        DEALLOCATE(O_IFAIL, STAT=L_STAT_DEALLOC)
    ENDIF
    DEALLOCATE(IWORK, STAT=L_STAT_DEALLOC)
1001    CONTINUE
    ! <<< Error handler >>>
    IF(PRESENT(INFO)) THEN
        INFO = O_INFO
    ELSEIF(O_INFO <= -1000) THEN
        CALL F77_XERBLA(SRNAME,-O_INFO)
    ENDIF
END SUBROUTINE SSYGVX_F95
