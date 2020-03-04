#!/bin/csh
#
# Copyright 2009-2019 Intel Corporation.
#
# This software and the related documents are Intel copyrighted materials, and
# your use of them is governed by the express license under which they were
# provided to you (License). Unless the License provides otherwise, you may
# not use, modify, copy, publish, distribute, disclose or transmit this
# software or the related documents without Intel's prior written permission.
#
# This software and the related documents are provided as is, with no express
# or implied warranties, other than those that are expressly stated in the
# License.

# C Shell script for the Intel(R) Parallel Studio XE 2019 Update 4 for Linux* OS

set SCRIPTPATH=/users/banspach/oss/third_party/intel/parallel_studio_xe_2019.5.075
set ROOTPATH=/users/banspach/oss/third_party/intel
set INTEL_TARGET_ARCH="intel64"
set ITAC_PARAM=""
set INTEL_PYTHON="3"
if ( ! -f "$ROOTPATH/intelpython3/bin/activate" ) then
    set INTEL_PYTHON="2"
endif

while ($#argv > 0)
    set arg=$argv[1]
    if ( x"$arg" != x"" ) then
        switch ($arg)
            case ia32:
                set INTEL_TARGET_ARCH="ia32"
                breaksw
            case intel64:
                set INTEL_TARGET_ARCH="intel64"
                breaksw
            case impi64:
                set ITAC_PARAM="$arg"
                breaksw
            case -python:
                set INTEL_PYTHON="$argv[2]"
                shift
                breaksw
        endsw
    endif
    shift
end

echo "Intel(R) Parallel Studio XE 2019 Update 4 for Linux*"
echo "Copyright (C) 2009-2019 Intel Corporation. All rights reserved."

if ( -f "$SCRIPTPATH/compilers_and_libraries_2019/linux/bin/compilervars.csh" ) then
    source "$SCRIPTPATH/compilers_and_libraries_2019/linux/bin/compilervars.csh" "$INTEL_TARGET_ARCH"
endif

if ( x"$INTEL_TARGET_ARCH" == x"intel64" ) then
    if ( -f "$SCRIPTPATH/clck_2019/bin/clckvars.csh" ) then
        source "$SCRIPTPATH/clck_2019/bin/clckvars.csh"
    endif
endif

if ( -f "$SCRIPTPATH/itac_2019/bin/itacvars.csh" ) then
    source "$SCRIPTPATH/itac_2019/bin/itacvars.csh" "$ITAC_PARAM"
endif

if ( -f "$SCRIPTPATH/vtune_amplifier_2019/amplxe-vars.csh" ) then
    source "$SCRIPTPATH/vtune_amplifier_2019/amplxe-vars.csh" quiet
endif

if ( -f "$SCRIPTPATH/inspector_2019/inspxe-vars.csh" ) then
    source "$SCRIPTPATH/inspector_2019/inspxe-vars.csh" quiet
endif

if ( -f "$SCRIPTPATH/advisor_2019/advixe-vars.csh" ) then
    source "$SCRIPTPATH/advisor_2019/advixe-vars.csh" quiet
endif

if ( -f "$ROOTPATH/intelpython$INTEL_PYTHON/bin/activate" ) then
    if !($?PATH) then
        setenv PATH "$ROOTPATH/intelpython$INTEL_PYTHON/bin"
    else
        setenv PATH "$ROOTPATH/intelpython$INTEL_PYTHON/bin:${PATH}"
    endif
endif

set path = ($path "$SCRIPTPATH/bin")

if !($?INTEL_LICENSE_FILE) then
    setenv INTEL_LICENSE_FILE "$ROOTPATH/licenses"
else
    setenv INTEL_LICENSE_FILE "$ROOTPATH/licenses:${INTEL_LICENSE_FILE}"
endif
setenv PSXE_2019 1
