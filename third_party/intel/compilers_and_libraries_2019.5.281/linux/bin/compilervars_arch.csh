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

if ($?INSTALL_DIR) then
    set INTEL_INSTALL_DIR_SAVED=$INSTALL_DIR
endif

if ($?NDK_DIR) then
    set INTEL_NDK_DIR_SAVED=$NDK_DIR
endif

set INSTALL_DIR="/users/banspach/oss/third_party/intel/compilers_and_libraries_2019.5.281/linux"
set NDK_DIR="<NDK_DIR>"
set NDK_ARCH=""
set INTEL_HOST_PLATFORM=`uname`

if ( $#argv == 0 ) then
    set INTEL_TARGET_ARCH=$COMPILERVARS_ARCHITECTURE
    set INTEL_TARGET_PLATFORM=$COMPILERVARS_PLATFORM
else
    set INTEL_TARGET_ARCH=$1
    set INTEL_TARGET_PLATFORM=$2
endif

if !($?PATH) then
    setenv PATH "$INSTALL_DIR/bin/intel64:$INSTALL_DIR/bin"
else
    setenv PATH "$INSTALL_DIR/bin/intel64:$INSTALL_DIR/bin:${PATH}"
endif

if ( $INTEL_TARGET_ARCH == "ia32" ) then
    set NDK_ARCH=x86
    setenv INTEL_TARGET_ARCH_IA32 ia32
    if ( -d "$INSTALL_DIR/mpirt/bin/ia32_lin" ) then
        setenv PATH "${PATH}:${INSTALL_DIR}/mpirt/bin/ia32_lin"
    endif
else if ( $INTEL_TARGET_ARCH == "intel64" ) then
    set NDK_ARCH=x86_64
    if ($?INTEL_TARGET_ARCH_IA32) then
        unsetenv INTEL_TARGET_ARCH_IA32
    endif
endif

if ( "$INTEL_TARGET_PLATFORM" == "android" ) then
    setenv ICCCFG "$INSTALL_DIR/bin/intel64/icc_and.cfg"
    setenv ICPCCFG "$INSTALL_DIR/bin/intel64/icpc_and.cfg"
    setenv ICXCFG "$INSTALL_DIR/bin/intel64/icx_and.cfg"
    setenv ICPXCFG "$INSTALL_DIR/bin/intel64/icpx_and.cfg"
    setenv XIARCFG "$INSTALL_DIR/bin/intel64/xiar_and.cfg"
    setenv XILDCFG "$INSTALL_DIR/bin/intel64/xild_and.cfg"
else
    unsetenv ICCCFG
    unsetenv ICPCCFG
    unsetenv ICXCFG
    unsetenv ICPXCFG
    unsetenv XIARCFG
    unsetenv XILDCFG
    unsetenv INTEL_USE_ENVIRONMENT
endif

foreach a (9 12 13 14 15 16 17 18 19 21 22 23 24 26)
    if ( -d "${NDK_DIR}/platforms/android-$a/arch-$NDK_ARCH" ) then
        setenv ANDROID_API $a
        setenv ANDROID_SYSROOT "${NDK_DIR}/platforms/android-$a/arch-$NDK_ARCH"
        break;
    endif
end

if ( -d "${NDK_DIR}/toolchains/${NDK_ARCH}-4.9/prebuilt/linux-x86_64" ) then
    setenv ANDROID_GNU_X86_TOOLCHAIN "${NDK_DIR}/toolchains/${NDK_ARCH}-4.9/prebuilt/linux-x86_64"
    setenv PATH "${ANDROID_GNU_X86_TOOLCHAIN}/bin:${NDK_DIR}/toolchains/llvm/prebuilt/linux-x86_64/bin:${PATH}"
endif

if ( ${INTEL_HOST_PLATFORM} == "Darwin" ) then
    # DYLD_LIBRARY_PATH is used on OS X*
    if !($?DYLD_LIBRARY_PATH) then
        setenv DYLD_LIBRARY_PATH "$INSTALL_DIR/compiler/lib:$INSTALL_DIR/compiler/lib/${INTEL_TARGET_ARCH}"
    else
        setenv DYLD_LIBRARY_PATH "$INSTALL_DIR/compiler/lib:$INSTALL_DIR/compiler/lib/${INTEL_TARGET_ARCH}:${DYLD_LIBRARY_PATH}"
    endif

    if !($?NLSPATH) then
        setenv NLSPATH "$INSTALL_DIR/compiler/lib/locale/en_US/%N"
    else
        setenv NLSPATH "$INSTALL_DIR/compiler/lib/locale/en_US/%N:${NLSPATH}"
    endif

    if !($?INTEL_LICENSE_FILE) then
        setenv INTEL_LICENSE_FILE "$INSTALL_DIR/licenses:/opt/intel/licenses:${HOME}/intel/licenses:/Users/Shared/Library/Application Support/Intel/Licenses"
    else
        setenv INTEL_LICENSE_FILE "$INSTALL_DIR/licenses:/opt/intel/licenses:${HOME}/intel/licenses:/Users/Shared/Library/Application Support/Intel/Licenses:${INTEL_LICENSE_FILE}"
    endif
else
    if !($?LD_LIBRARY_PATH) then
        setenv LD_LIBRARY_PATH "$INSTALL_DIR/compiler/lib/intel64_lin"
    else
        setenv LD_LIBRARY_PATH "$INSTALL_DIR/compiler/lib/intel64_lin:${LD_LIBRARY_PATH}"
    endif

    if ( $INTEL_TARGET_ARCH == "ia32" ) then
        setenv LD_LIBRARY_PATH "$INSTALL_DIR/compiler/lib/ia32_lin:${LD_LIBRARY_PATH}"
    endif

    if ( $INTEL_TARGET_ARCH == "ia32" && -d "$INSTALL_DIR/mpirt/lib/ia32_lin" ) then
        setenv LD_LIBRARY_PATH "${LD_LIBRARY_PATH}:$INSTALL_DIR/mpirt/lib/ia32_lin"
    endif

    if ( -d "$INSTALL_DIR/compiler/lib/mic" ) then
        if !($?MIC_LD_LIBRARY_PATH) then
            setenv MIC_LD_LIBRARY_PATH "$INSTALL_DIR/compiler/lib/mic"
        else
            setenv MIC_LD_LIBRARY_PATH "$INSTALL_DIR/compiler/lib/mic:${MIC_LD_LIBRARY_PATH}"
        endif
        if !($?MIC_LIBRARY_PATH) then
            setenv MIC_LIBRARY_PATH "$INSTALL_DIR/compiler/lib/mic"
        else
            setenv MIC_LIBRARY_PATH "$INSTALL_DIR/compiler/lib/mic:${MIC_LIBRARY_PATH}"
        endif
    endif

    if ( -d "$INSTALL_DIR/mpi/mic/lib" ) then
        if !($?MIC_LD_LIBRARY_PATH) then
            setenv MIC_LD_LIBRARY_PATH "$INSTALL_DIR/mpi/mic/lib"
        else
            setenv MIC_LD_LIBRARY_PATH "$INSTALL_DIR/mpi/mic/lib:${MIC_LD_LIBRARY_PATH}"
        endif
        if !($?MIC_LIBRARY_PATH) then
            setenv MIC_LIBRARY_PATH "$INSTALL_DIR/mpi/mic/lib"
        else
            setenv MIC_LIBRARY_PATH "$INSTALL_DIR/mpi/mic/lib:${MIC_LIBRARY_PATH}"
        endif
    endif

    if !($?NLSPATH) then
        setenv NLSPATH "${INSTALL_DIR}/compiler/lib/intel64/locale/%l_%t/%N"
    else
        setenv NLSPATH "${INSTALL_DIR}/compiler/lib/intel64/locale/%l_%t/%N:${NLSPATH}"
    endif
    if ( $INTEL_TARGET_ARCH == "ia32" ) then
        setenv NLSPATH "${INSTALL_DIR}/compiler/lib/ia32/locale/%l_%t/%N:${NLSPATH}"
    endif

    if !($?INTEL_LICENSE_FILE) then
        setenv INTEL_LICENSE_FILE "$INSTALL_DIR/licenses:/opt/intel/licenses:${HOME}/intel/licenses"
    else
        setenv INTEL_LICENSE_FILE "$INSTALL_DIR/licenses:/opt/intel/licenses:${HOME}/intel/licenses:${INTEL_LICENSE_FILE}"
    endif
endif

if ( -d "$INSTALL_DIR/../../man/common" ) then
    if !($?MANPATH) then
        if (-s /usr/bin/manpath) then
            setenv MANPATH `cd "$INSTALL_DIR/../../man/common" && pwd`:`manpath`
        else
            setenv MANPATH `cd "$INSTALL_DIR/../../man/common" && pwd`
        endif
    else
        setenv MANPATH `cd "$INSTALL_DIR/../../man/common" && pwd`:${MANPATH}
    endif
endif

if ($?INTEL_INSTALL_DIR_SAVED) then
    set INSTALL_DIR=$INTEL_INSTALL_DIR_SAVED
else
    unset INSTALL_DIR
endif
if ($?INTEL_NDK_DIR_SAVED) then
    set NDK_DIR=$INTEL_NDK_DIR_SAVED
else
    unset NDK_DIR
endif

unset INTEL_INSTALL_DIR_SAVED
unset INTEL_NDK_DIR_SAVED
