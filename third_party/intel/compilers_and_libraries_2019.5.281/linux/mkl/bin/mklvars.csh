#!/bin/tcsh
#===============================================================================
# Copyright 2003-2019 Intel Corporation.
#
# This software and the related documents are Intel copyrighted  materials,  and
# your use of  them is  governed by the  express license  under which  they were
# provided to you (License).  Unless the License provides otherwise, you may not
# use, modify, copy, publish, distribute,  disclose or transmit this software or
# the related documents without Intel's prior written permission.
#
# This software and the related documents  are provided as  is,  with no express
# or implied  warranties,  other  than those  that are  expressly stated  in the
# License.
#===============================================================================

set __mkl_tmp_cpro_path=/users/banspach/oss/third_party/intel/compilers_and_libraries_2019.5.281/linux
setenv MKLROOT ${__mkl_tmp_cpro_path}/mkl

set __mkl_tmp_script_name="mklvars.csh"
set __mkl_tmp_mod_name="mod"

set __mkl_tmp_target_arch=""
set __mkl_tmp_lp64_ilp64=""
set __mkl_tmp_mod=""
set __mkl_tmp_mklvars_verbose=""

if ( $#argv == 0 ) then
    if ( $?COMPILERVARS_ARCHITECTURE ) then
        set __mkl_tmp_target_arch="$COMPILERVARS_ARCHITECTURE"
    endif
    if ( $?MKLVARS_ARCHITECTURE ) then
        set __mkl_tmp_target_arch="$MKLVARS_ARCHITECTURE"
    endif
    if ( $?MKLVARS_INTERFACE ) then
        set __mkl_tmp_lp64_ilp64="$MKLVARS_INTERFACE"
    endif
    if ( $?MKLVARS_MOD ) then
        set __mkl_tmp_mod="$MKLVARS_MOD"
    endif
    if ( $?MKLVARS_VERBOSE ) then
        set __mkl_tmp_mklvars_verbose="$MKLVARS_VERBOSE"
    endif
else
    while ( "$1" != "" )
        if ( "$1" == "ia32" || "$1" == "intel64" ) then
            set __mkl_tmp_target_arch="$1"
        else if ( "$1" == "lp64" || "$1" == "ilp64" ) then
            set __mkl_tmp_lp64_ilp64="$1"
        else if ( "$1" == ${__mkl_tmp_mod_name} ) then
            set __mkl_tmp_mod="${__mkl_tmp_mod_name}"
        else if ( "$1" == "verbose" ) then
            set __mkl_tmp_mklvars_verbose="verbose"
        else
            echo
            echo "ERROR: Unknown option '$1'"
            goto Help
        endif
        shift
    end
endif

set __ia32_arch_subdir="ia32_lin"
set __intel64_arch_subdir="intel64_lin"

if ( "${__mkl_tmp_target_arch}" == "ia32" ) then
    set __tmp_target_arch_subdir="${__ia32_arch_subdir}"
else if ( "${__mkl_tmp_target_arch}" == "intel64" ) then
    set __tmp_target_arch_subdir="${__intel64_arch_subdir}"
else
    echo
    echo "ERROR: architecture is not defined. Accepted values: ia32, intel64"
    goto Help
endif

set __tbb_target_arch_path=""
if ( ! ${?TBBROOT} ) then
    set __tbb_path="${__mkl_tmp_cpro_path}/tbb/lib"
    if ( -d "${__tbb_path}" ) then 
        set __tmp_tbb_subdir="gcc4.1"
        which gcc >/dev/null
        if ($status == 0) then
            set __tbb_tmp_gcc_version_full=`gcc --version | grep "gcc" | egrep -o " [0-9]+\.[0-9]+\.[0-9]+.*" | sed -e "s/^\ //"`
            if ($status == 0) then
                set __tbb_tmp_gcc_version=`echo "${__tbb_tmp_gcc_version_full}" | egrep -o "^[0-9]+\.[0-9]+\.[0-9]+"`
            endif
            switch ("${__tbb_tmp_gcc_version}")
            case 4.[7-9]*:
            case [5-9]*:
                set __tmp_tbb_subdir="gcc4.7"
                breaksw
            case 4.[4-6]*:
                set __tmp_tbb_subdir="gcc4.4"
                breaksw
            default:
                set __tmp_tbb_subdir="gcc4.1"
                breaksw
            endsw
        endif

        if ( "${__mkl_tmp_target_arch}" == "ia32" ) then
            set __tbb_target_arch_path=":${__tbb_path}/${__tmp_target_arch_subdir}/${__tmp_tbb_subdir}"
        else 
            set __tbb_target_arch_path=":${__tbb_path}/${__tmp_target_arch_subdir}/${__tmp_tbb_subdir}"
        endif
    endif
endif

# Preparing string with necessary paths for LD_LIBRARY_PATH
set __tmp_ld_library_path="${__mkl_tmp_cpro_path}/compiler/lib/${__tmp_target_arch_subdir}:${MKLROOT}/lib/${__tmp_target_arch_subdir}${__tbb_target_arch_path}"

# Preparing string with necessary paths for LIBRARY_PATH
set __tmp_library_path="${__mkl_tmp_cpro_path}/compiler/lib/${__tmp_target_arch_subdir}:${MKLROOT}/lib/${__tmp_target_arch_subdir}${__tbb_target_arch_path}"

# Preparing string with necessary paths for NLSPATH
set __tmp_nlspath="${MKLROOT}/lib/${__tmp_target_arch_subdir}/locale/%l_%t/%N"

# Preparing string with necessary paths for CPATH
set __tmp_cpath="${MKLROOT}/include"
if ( "${__mkl_tmp_mod}" == "${__mkl_tmp_mod_name}" ) then
    if ( "${__mkl_tmp_target_arch}" == "ia32" ) then
        set __mkl_tmp_lp64_ilp64=""
    else
        if ( "$__mkl_tmp_lp64_ilp64" == "" ) then
            set __mkl_tmp_lp64_ilp64="lp64"
        endif
    endif

    set __tmp_cpath="${MKLROOT}/include/${__tmp_target_arch_subdir}/${__mkl_tmp_lp64_ilp64}:${__tmp_cpath}"
endif

if ( ${?LD_LIBRARY_PATH} ) then
    setenv LD_LIBRARY_PATH "${__tmp_ld_library_path}:${LD_LIBRARY_PATH}"
else
    setenv LD_LIBRARY_PATH "${__tmp_ld_library_path}"
endif
if ( ${?LIBRARY_PATH} ) then
    setenv LIBRARY_PATH "${__tmp_library_path}:${LIBRARY_PATH}"
else
    setenv LIBRARY_PATH "${__tmp_library_path}"
endif
if ( ${?NLSPATH} ) then
    setenv NLSPATH "${__tmp_nlspath}:${NLSPATH}"
else
    setenv NLSPATH "${__tmp_nlspath}"
endif
if ( ${?CPATH} ) then
    setenv CPATH "${__tmp_cpath}:${CPATH}"
else
    setenv CPATH "${__tmp_cpath}"
endif
if ( ${?PKG_CONFIG_PATH} ) then
    setenv PKG_CONFIG_PATH "${MKLROOT}/bin/pkgconfig:${PKG_CONFIG_PATH}"
else
    setenv PKG_CONFIG_PATH "${MKLROOT}/bin/pkgconfig"
endif

if ( "${__mkl_tmp_mklvars_verbose}" == "verbose" ) then
    echo LD_LIBRARY_PATH=${LD_LIBRARY_PATH}
    echo LIBRARY_PATH=${LIBRARY_PATH}
    echo NLSPATH=${NLSPATH}
    echo CPATH=${CPATH}
    echo PKG_CONFIG_PATH=${PKG_CONFIG_PATH}
endif

goto End

Help:
    echo ""
    echo "Syntax:"
    echo "  source $__mkl_tmp_script_name <arch> [MKL_interface] [${__mkl_tmp_mod_name}]"
    echo ""
    echo "   <arch> must be one of the following"
    echo "       ia32         : Setup for IA-32 architecture"
    echo "       intel64      : Setup for Intel(R) 64 architecture"
    echo ""
    echo "   ${__mkl_tmp_mod_name} (optional) - set path to Intel(R) MKL F95 modules"
    echo ""
    echo "   MKL_interface (optional) - Intel(R) MKL programming interface for intel64"
    echo "                              Not applicable without ${__mkl_tmp_mod_name}"
    echo "       lp64         : 4 bytes integer (default)"
    echo "       ilp64        : 8 bytes integer"
    echo ""
    echo "If the arguments to the sourced script are ignored (consult docs for"
    echo "your shell) the alternative way to specify target is environment"
    echo "variables COMPILERVARS_ARCHITECTURE or MKLVARS_ARCHITECTURE to pass"
    echo "<arch> to the script, MKLVARS_INTERFACE to pass <MKL_interface> and"
    echo "MKLVARS_MOD to pass <${__mkl_tmp_mod_name}>"
    echo ""
    exit 1;

End: # Clean up of internal settings
    unset __mkl_tmp_cpro_path
    unset __mkl_tmp_script_name
    unset __mkl_tmp_mod
    unset __mkl_tmp_mod_name
    unset __mkl_tmp_lp64_ilp64
    unset __mkl_tmp_mklvars_verbose
    unset __mkl_tmp_target_arch
    unset __tmp_target_arch_subdir
    unset __ia32_arch_subdir
    unset __intel64_arch_subdir
    unset __tbb_path
    unset __tmp_tbb_subdir
    unset __tbb_tmp_gcc_version_full
    unset __tbb_tmp_gcc_version
    unset __tbb_target_arch_path
    unset __tmp_ld_library_path
    unset __tmp_library_path
    unset __tmp_nlspath
    unset __tmp_cpath
