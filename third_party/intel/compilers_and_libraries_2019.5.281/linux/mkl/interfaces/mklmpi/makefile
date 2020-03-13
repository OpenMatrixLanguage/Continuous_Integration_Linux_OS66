#===============================================================================
# Copyright 2015-2019 Intel Corporation.
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

#  Content:
#      Makefile for Intel(R) MKL MPI wrapper library.
#      This library allows using custom MPI in Cluster Intel(R) MKL.
#*******************************************************************************

help:
	@echo "Usage: make libintel64|sointel64"
	@echo "            [interface=lp64|ilp64]"
	@echo
	@echo "Targets:"
	@echo "   libintel64  - static library for Intel(R) 64 architecture"
	@echo "   sointel64   - dynamic library for Intel(R) 64 architecture"
	@echo
	@echo "interface=lp64 - using 32-bit integers (only for Intel(R) 64), default"
	@echo "interface=ilp64- using 64-bit integers (only for Intel(R) 64)"
	@echo
	@echo "Additional macros:"
	@echo "   MPICC       - C compiler ('mpicc', 'mpicc -cc=icc', etc...)"
	@echo
	@echo "   MKLROOT     - path to Intel(R) MKL root, default is ../.."
	@echo
	@echo "   INSTALL_DIR - location where Intel(R) MKL MPI wrap library will be installed"
	@echo "                 Default is <MKLROOT>/lib/<arch>"
	@echo
	@echo "   INSTALL_LIBNAME"
	@echo "               - name of Intel(R) MKL MPI wrap library will be installed"
	@echo "                 Default is libmkl_blacs_custom"
	@echo
	@echo "   TARGET_ARCH=<flags>"
	@echo "               - defines additional compiler flags"
	@echo "                 Refer to the compiler documentation about CPU specific flags."
	@echo "                 Some compilers may need these flags to enable optimizations"
	@echo "                 for modern CPUs"
	@echo
	@echo "Set environment variables LD_LIBRARY_PATH and etc. properly before testing."

## Please use the command line parameters to override the values below
MKLROOT ?= ../..
MPICC  ?= mpicc
LD ?= ld

ifeq ($(interface),ilp64)
    ILP_OPTS = -DMKL_ILP64
    ILP_EXT  = _ilp64
else
    ILP_OPTS =
    ILP_EXT  = _lp64
endif

ifndef INSTALL_DIR
    INSTALL_DIR = $(MKLROOT)/lib/$(_IA)
    obj_path = ./obj_$(_IA)$(ILP_EXT)
else
    obj_path = $(INSTALL_DIR)/obj_$(_IA)$(ILP_EXT)
endif

override mpi = custom

INSTALL_LIBNAME ?= libmkl_blacs_$(mpi)$(ILP_EXT)
WRAPLIB_BLACS = $(INSTALL_LIBNAME)

.PHONY: libintel64

.PHONY: sointel64

libintel64:
	$(MAKE) clean mkobjdir wraplib ILP_EXT=$(ILP_EXT) _IA=intel64

sointel64:
	$(MAKE) clean mkobjdir wrapso ILP_EXT=$(ILP_EXT) _IA=intel64

#-------------------------------------------------------------------------------
# Nested makefile
#-------------------------------------------------------------------------------

ifdef _IA
    WRAP    = mklmpi-impl
    objs    = $(addsuffix .o ,$(WRAP))
    objects = $(addprefix $(obj_path)/,$(objs))

    ifeq (,$(findstring x$(interface),x xlp64 xilp64))
        $(warning "Using interface=lp64 instead of unknown $(interface)")
        ILP_OPTS =
        ILP_EXT  = _lp64
    endif

.SUFFIXES:

.SUFFIXES: .c .o

vpath %.c .

$(obj_path)/%.o: %.c
	$(MPICC) -c -Wall -fPIC $(CFLAGS) $(CPPFLAGS) $(TARGET_ARCH) $(ILP_OPTS) -I$(MKLROOT)/include $< -o $@

wraplib: $(objects)
	cp $(MKLROOT)/lib/$(_IA)/libmkl_blacs_intelmpi$(ILP_EXT).a $(obj_path)/libmkl_blacs_$(mpi)$(ILP_EXT).a
	cd $(obj_path) && $(AR) $(ARFLAGS)u libmkl_blacs_$(mpi)$(ILP_EXT).a $(objs)
	cp $(obj_path)/libmkl_blacs_$(mpi)$(ILP_EXT).a $(INSTALL_DIR)/$(WRAPLIB_BLACS).a

wrapso: $(objects)
	cp $(MKLROOT)/lib/$(_IA)/libmkl_blacs_intelmpi$(ILP_EXT).a $(obj_path)/libmkl_blacs_$(mpi)$(ILP_EXT).a
	cd $(obj_path) && $(AR) $(ARFLAGS)u libmkl_blacs_$(mpi)$(ILP_EXT).a $(objs)
	$(LD) -shared  --whole-archive $(obj_path)/libmkl_blacs_$(mpi)$(ILP_EXT).a --no-whole-archive -o $(INSTALL_DIR)/$(WRAPLIB_BLACS).so

mkobjdir:
	-mkdir -p $(obj_path)
	-mkdir -p $(INSTALL_DIR)

clean:
	-rm -rf $(obj_path)
	-rm -f $(INSTALL_DIR)/$(WRAPLIB_BLACS)

endif
