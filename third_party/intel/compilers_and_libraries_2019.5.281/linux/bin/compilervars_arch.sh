#! /bin/sh
#========================================
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
#========================================

INTEL_INSTALL_DIR_ORIG=$INSTALL_DIR
INTEL_NDK_DIR_ORIG=$NDK_DIR
INSTALL_DIR="/users/banspach/oss/third_party/intel/compilers_and_libraries_2019.5.281/linux"
NDK_DIR="<NDK_DIR>"
NDK_ARCH=""
INTEL_HOST_PLATFORM=`uname`

if [ $# -eq 0 ]; then
    INTEL_TARGET_ARCH=$COMPILERVARS_ARCHITECTURE
    INTEL_TARGET_PLATFORM=$COMPILERVARS_PLATFORM
else
    INTEL_TARGET_ARCH=$1
    INTEL_TARGET_PLATFORM=$2
fi

if [ -z "${PATH}" ]; then
    PATH="${INSTALL_DIR}/bin/intel64:${INSTALL_DIR}/bin";
else
    PATH="${INSTALL_DIR}/bin/intel64:${INSTALL_DIR}/bin:${PATH}"
fi

if [ "${INTEL_TARGET_ARCH}" = "ia32" ]; then
    NDK_ARCH=x86
    export INTEL_TARGET_ARCH_IA32=ia32
    if [ -d "${INSTALL_DIR}/mpirt/bin/ia32_lin" ]; then
        PATH="${INSTALL_DIR}/mpirt/bin/ia32_lin:${PATH}"
    fi
elif [ "${INTEL_TARGET_ARCH}" = "intel64" ]; then
    NDK_ARCH=x86_64
    if [ -n "${INTEL_TARGET_ARCH_IA32}" ]; then
        unset INTEL_TARGET_ARCH_IA32
    fi
fi
export PATH

if [ "${INTEL_TARGET_PLATFORM}" = "android" ]; then
    export ICCCFG="${INSTALL_DIR}/bin/intel64/icc_and.cfg"
    export ICPCCFG="${INSTALL_DIR}/bin/intel64/icpc_and.cfg"
    export ICXCFG="${INSTALL_DIR}/bin/intel64/icx_and.cfg"
    export ICPXCFG="${INSTALL_DIR}/bin/intel64/icpx_and.cfg"
    export XIARCFG="${INSTALL_DIR}/bin/intel64/xiar_and.cfg"
    export XILDCFG="${INSTALL_DIR}/bin/intel64/xild_and.cfg"
else
    unset ICCCFG
    unset ICPCCFG
    unset ICXCFG
    unset ICPXCFG
    unset XIARCFG
    unset XILDCFG
    unset INTEL_USE_ENVIRONMENT
fi

for target in 9 12 13 14 15 16 17 18 19 21 22 23 24 26 ; do
    if [ -d "${NDK_DIR}/platforms/android-${target}/arch-${NDK_ARCH}" ]; then
        export ANDROID_API=${target}
        export ANDROID_SYSROOT="${NDK_DIR}/platforms/android-${target}/arch-${NDK_ARCH}"
        break;
    fi
done

if [ -d "${NDK_DIR}/toolchains/${NDK_ARCH}-4.9/prebuilt/linux-x86_64" ]; then
    export ANDROID_GNU_X86_TOOLCHAIN="${NDK_DIR}/toolchains/${NDK_ARCH}-4.9/prebuilt/linux-x86_64"
    export PATH="${ANDROID_GNU_X86_TOOLCHAIN}/bin:${NDK_DIR}/toolchains/llvm/prebuilt/linux-x86_64/bin:${PATH}"
fi

if [ "${INTEL_HOST_PLATFORM}" = "Darwin" ]; then
    # DYLD_LIBRARY_PATH is used on OS X*
    if [ -z "${DYLD_LIBRARY_PATH}" ]; then
        export DYLD_LIBRARY_PATH="${INSTALL_DIR}/compiler/lib:${INSTALL_DIR}/compiler/lib/${INTEL_TARGET_ARCH}"
    else
        export DYLD_LIBRARY_PATH="${INSTALL_DIR}/compiler/lib:${INSTALL_DIR}/compiler/lib/${INTEL_TARGET_ARCH}:${DYLD_LIBRARY_PATH}"
    fi

    if [ -z "${NLSPATH}" ]; then
        export NLSPATH="${INSTALL_DIR}/compiler/lib/locale/en_US/%N"
    else
        export NLSPATH="${INSTALL_DIR}/compiler/lib/locale/en_US/%N:${NLSPATH}"
    fi

    if [ -z "${INTEL_LICENSE_FILE}" ]; then
        export INTEL_LICENSE_FILE="${INSTALL_DIR}/licenses:/opt/intel/licenses:${HOME}/intel/licenses:/Users/Shared/Library/Application Support/Intel/Licenses"
    else
        export INTEL_LICENSE_FILE="${INTEL_LICENSE_FILE}:${INSTALL_DIR}/licenses:/opt/intel/licenses:${HOME}/intel/licenses:/Users/Shared/Library/Application Support/Intel/Licenses"
    fi
else
    if [ -z "${LD_LIBRARY_PATH}" ]; then
        export LD_LIBRARY_PATH="${INSTALL_DIR}/compiler/lib/intel64_lin"
    else
        export LD_LIBRARY_PATH="${INSTALL_DIR}/compiler/lib/intel64_lin:${LD_LIBRARY_PATH}"
    fi

    if [ ${INTEL_TARGET_ARCH} = "ia32" ]; then
        export  LD_LIBRARY_PATH="${INSTALL_DIR}/compiler/lib/ia32_lin:${LD_LIBRARY_PATH}"
    fi

    if [ "${INTEL_TARGET_ARCH}" = "ia32" -a -d  "${INSTALL_DIR}/mpirt/lib/ia32_lin" ]; then
        export LD_LIBRARY_PATH="${LD_LIBRARY_PATH}:${INSTALL_DIR}/mpirt/lib/ia32_lin"
    fi

    if [ -d "${INSTALL_DIR}/compiler/lib/mic" ]; then
        if [ -z "${MIC_LD_LIBRARY_PATH}" ]; then
            export MIC_LD_LIBRARY_PATH="${INSTALL_DIR}/compiler/lib/mic"
        else
            export MIC_LD_LIBRARY_PATH="${INSTALL_DIR}/compiler/lib/mic:${MIC_LD_LIBRARY_PATH}"
        fi

        if [ -z "${MIC_LIBRARY_PATH}" ]; then
            export MIC_LIBRARY_PATH="${INSTALL_DIR}/compiler/lib/mic"
        else
            export MIC_LIBRARY_PATH="${INSTALL_DIR}/compiler/lib/mic:${MIC_LIBRARY_PATH}"
        fi
    fi

    if [ -d "$INSTALL_DIR/mpi/mic/lib" ]; then
        if [ -z "${MIC_LD_LIBRARY_PATH}" ]; then
            export MIC_LD_LIBRARY_PATH="${INSTALL_DIR}/mpi/mic/lib"
        else
            export MIC_LD_LIBRARY_PATH="${INSTALL_DIR}/mpi/mic/lib:${MIC_LD_LIBRARY_PATH}"
        fi

        if [ -z "${MIC_LIBRARY_PATH}" ]; then
            export MIC_LIBRARY_PATH="${INSTALL_DIR}/mpi/mic/lib"
        else
            export MIC_LIBRARY_PATH="${INSTALL_DIR}/mpi/mic/lib:${MIC_LIBRARY_PATH}"
        fi
    fi

    if [ -z "${NLSPATH}" ]; then
        export NLSPATH="${INSTALL_DIR}/compiler/lib/intel64/locale/%l_%t/%N"
    else
        export NLSPATH="${INSTALL_DIR}/compiler/lib/intel64/locale/%l_%t/%N:${NLSPATH}"
    fi
    if [ "${INTEL_TARGET_ARCH}" = "ia32" ]; then
        export NLSPATH="${INSTALL_DIR}/compiler/lib/ia32/locale/%l_%t/%N:${NLSPATH}"
    fi

    if [ -z "${INTEL_LICENSE_FILE}" ]; then
        export INTEL_LICENSE_FILE="${INSTALL_DIR}/licenses:/opt/intel/licenses:${HOME}/intel/licenses"
    else
        export INTEL_LICENSE_FILE="${INTEL_LICENSE_FILE}:${INSTALL_DIR}/licenses:/opt/intel/licenses:${HOME}/intel/licenses"
    fi
fi

if [ -d "${INSTALL_DIR}/../../man/common" ]; then
    if [ -z "${MANPATH}" ]; then
        if [ -f "/usr/bin/manpath" ]; then
            export MANPATH=`cd "${INSTALL_DIR}/../../man/common" && pwd`:`manpath`
        else
            export MANPATH=`cd "${INSTALL_DIR}/../../man/common" && pwd`
        fi
    else
        export MANPATH=`cd "${INSTALL_DIR}/../../man/common" && pwd`:${MANPATH}
    fi
fi

if [ -n ${INTEL_INSTALL_DIR_ORIG} ]; then
    INSTALL_DIR=${INTEL_INSTALL_DIR_ORIG}
else
    unset INSTALL_DIR
fi

if [ -n ${INTEL_NDK_DIR_ORIG} ]; then
    NDK_DIR=${INTEL_NDK_DIR_ORIG}
else
    unset NDK_DIR
fi

unset INTEL_INSTALL_DIR_ORIG
unset INTEL_NDK_DIR_ORIG
