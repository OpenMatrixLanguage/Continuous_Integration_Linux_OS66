#!/bin/csh
#===============================================================================
# Copyright 1985-2019 Intel Corporation All Rights Reserved.
#
# The source code,  information  and material  ("Material") contained  herein is
# owned by Intel Corporation or its  suppliers or licensors,  and  title to such
# Material remains with Intel  Corporation or its  suppliers or  licensors.  The
# Material  contains  proprietary  information  of  Intel or  its suppliers  and
# licensors.  The Material is protected by  worldwide copyright  laws and treaty
# provisions.  No part  of  the  Material   may  be  used,  copied,  reproduced,
# modified, published,  uploaded, posted, transmitted,  distributed or disclosed
# in any way without Intel's prior express written permission.  No license under
# any patent,  copyright or other  intellectual property rights  in the Material
# is granted to  or  conferred  upon  you,  either   expressly,  by implication,
# inducement,  estoppel  or  otherwise.  Any  license   under such  intellectual
# property rights must be express and approved by Intel in writing.
#
# Unless otherwise agreed by Intel in writing,  you may not remove or alter this
# notice or  any  other  notice   embedded  in  Materials  by  Intel  or Intel's
# suppliers or licensors in any way.
#===============================================================================

set PROD_DIR="/users/banspach/oss/third_party/intel/compilers_and_libraries_2019.5.281/linux"
set INTEL_TARGET_ARCH
set INTEL_TARGET_PLATFORM=linux
set INTEL_HOST_PLATFORM=`uname`

set COMPILERVARS_ARGV=$#argv
if ( ${COMPILERVARS_ARGV} == 0 ) then
    if ($?COMPILERVARS_ARCHITECTURE) then
        set INTEL_TARGET_ARCH=$COMPILERVARS_ARCHITECTURE
    endif
    if ($?COMPILERVARS_PLATFORM) then
        set INTEL_TARGET_PLATFORM=$COMPILERVARS_PLATFORM
    endif
endif

while ( $#argv != 0 )
    switch ( $argv[1] )
        case "-arch" :
            shift
            set INTEL_TARGET_ARCH="$1"
            shift
            breaksw
        case "-platform" :
            shift
            set INTEL_TARGET_PLATFORM="$1"
            shift
            breaksw
        default :
            set INTEL_TARGET_ARCH="$1"
            shift
            breaksw
    endsw
end

if ( ( "$INTEL_TARGET_ARCH" != "ia32" && "$INTEL_TARGET_ARCH" != "intel64" || \
       "$INTEL_TARGET_PLATFORM" != "android" && \
       "$INTEL_TARGET_PLATFORM" != "linux" && \
       "$INTEL_TARGET_PLATFORM" != "mac" ) || \
       "$INTEL_HOST_PLATFORM" == "Darwin" && "$INTEL_TARGET_ARCH" != "intel64" ) then

    echo "compilervars.csh [-arch] <arch> [-platform <platform>]"
    echo ""
    echo "  <arch> must be one of the following:"
    if ( "$INTEL_HOST_PLATFORM" != "Darwin" ) then
        echo "      ia32           : Set up for IA-32 target."
    endif
    echo "      intel64        : Set up for Intel(R)64 target."
    echo "  <platform> must be of the following:"
    if ( "$INTEL_HOST_PLATFORM" == "Darwin" ) then
        echo "      linux          : Set to Linux* target."
        echo "      mac            : Set to macOS* target.(default)"
    else
        echo "      android        : Set to Android* target."
        echo "      linux          : Set to Linux* target.(default)"
    endif
    echo ""
    echo "If the arguments to the sourced script are ignored (consult docs"
    echo "for your shell) the alternative way to specify target is environment"
    echo "variables COMPILERVARS_ARCHITECTURE to pass <arch> to the script"
    echo "and COMPILERVARS_PLATFORM to pass <platform>"

    exit 1
endif

if ( ${INTEL_TARGET_PLATFORM} == "mac" ) then
    set INTEL_TARGET_PLATFORM="linux"
endif

if ( ${COMPILERVARS_ARGV} == 0 ) then
    #pass default values via COMPILERVARS_*
    if ( ! $?COMPILERVARS_ARCHITECTURE ) then
        set COMPILERVARS_ARCHITECTURE="$INTEL_TARGET_ARCH"
    endif
    if ( ! $?COMPILERVARS_PLATFORM ) then
        set COMPILERVARS_PLATFORM="$INTEL_TARGET_PLATFORM"
    endif
    set INTEL_TARGET_ARCH
    set INTEL_TARGET_PLATFORM
endif

if ( -e "${PROD_DIR}/daal/bin/daalvars.csh" ) then
    source "${PROD_DIR}/daal/bin/daalvars.csh" ${INTEL_TARGET_ARCH};
endif

if ( -e "${PROD_DIR}/../../debugger_2019/bin/debuggervars.csh" ) then
    source "${PROD_DIR}/../../debugger_2019/bin/debuggervars.csh" ${INTEL_TARGET_ARCH};
endif

if ( -e "${PROD_DIR}/tbb/bin/tbbvars.csh" ) then
    source "${PROD_DIR}/tbb/bin/tbbvars.csh" ${INTEL_TARGET_ARCH} ${INTEL_TARGET_PLATFORM};
endif

if ( -e "${PROD_DIR}/pstl/bin/pstlvars.csh" ) then
    source "${PROD_DIR}/pstl/bin/pstlvars.csh" ${INTEL_TARGET_ARCH};
endif

if ( -e "${PROD_DIR}/mkl/bin/mklvars.csh" ) then
    source "${PROD_DIR}/mkl/bin/mklvars.csh" ${INTEL_TARGET_ARCH};
endif

if ( -e "${PROD_DIR}/ipp/bin/ippvars.csh" ) then
    source "${PROD_DIR}/ipp/bin/ippvars.csh" ${INTEL_TARGET_ARCH} ${INTEL_TARGET_PLATFORM};
endif

if ( -e "${PROD_DIR}/ippcp/bin/ippcpvars.csh" ) then
    source "${PROD_DIR}/ippcp/bin/ippcpvars.csh" ${INTEL_TARGET_ARCH} ${INTEL_TARGET_PLATFORM};
endif

if ( -e "${PROD_DIR}/mpi/intel64/bin/mpivars.csh" ) then
    if ( ${COMPILERVARS_ARGV} == 0 ) then
        if ( "${COMPILERVARS_ARCHITECTURE}" == "intel64" ) then
            source "${PROD_DIR}/mpi/intel64/bin/mpivars.csh";
        endif
    else if ( "${INTEL_TARGET_ARCH}" == "intel64" ) then
        source "${PROD_DIR}/mpi/intel64/bin/mpivars.csh";
    endif
endif

if ( -e "${PROD_DIR}/pkg_bin/compilervars_arch.csh" ) then
    source "${PROD_DIR}/pkg_bin/compilervars_arch.csh" ${INTEL_TARGET_ARCH} ${INTEL_TARGET_PLATFORM};
endif
