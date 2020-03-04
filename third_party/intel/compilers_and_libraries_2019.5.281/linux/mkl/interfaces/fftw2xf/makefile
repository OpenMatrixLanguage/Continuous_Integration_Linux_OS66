#===============================================================================
# Copyright 2006-2019 Intel Corporation.
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

## Content:
##      Build standalone library of FFTW2 Fortran wrappers to Intel(R) MKL.
##*****************************************************************************

help:
	@echo "Usage: make libia32|libintel64"
	@echo "            [compiler=compiler_name]"
	@echo "            [PRECISION={MKL_DOUBLE|MKL_SINGLE}]"
	@echo
	@echo "  compiler_name - {pgi|gnu|intel}"
	@echo "        Intel(R) C Compiler as default"
	@echo "        Default value: intel"
	@echo
	@echo "Additional macros:"
	@echo "  MKLROOT=<path>"
	@echo "        Path to Intel(R) MKL root directory with header files and libraries."
	@echo "        Default value: ../.."
	@echo
	@echo "  INSTALL_DIR=<path>"
	@echo "        Install the library to the specified location."
	@echo '        Default value: $$(MKLROOT)/lib/<arch>'
	@echo
	@echo "  INSTALL_LIBNAME=<name>"
	@echo "        Specify the name of the library."
	@echo "        Default value depends on PRECISION and compiler used:"
	@echo '          libfftw2xf_$(prec)_$(compiler).a'
	@echo

##-----------------------------------------------------------------------------
## examples of using:
##
## make libia32 PRECISION=MKL_SINGLE compiler=gnu
##      - compile by GNU C compiler for single precision data
##        and build library for Intel IA32 based applications
##
## make libintel64
##      - compile by Intel(R) C Compiler and build library
##        for Intel(R) 64 processor family applications
##-----------------------------------------------------------------------------
## Default values

MY_MAKEFILE := $(MAKEFILE_LIST)

MKLROOT ?= ../..

include $(MKLROOT)/interfaces/fftw2xf/fftw2xf.lst

compiler = intel

ifndef INSTALL_DIR
   INSTALL_DIR = $(MKLROOT)/lib/$(_IA)
   obj_path = obj_$(prec)_$(compiler)
else
   obj_path = $(INSTALL_DIR)/obj_$(prec)_$(compiler)
endif

ifneq ($(PRECISION),MKL_SINGLE)
   override PRECISION = MKL_DOUBLE
   prec = double
else
   prec = single
endif

INSTALL_LIBNAME ?= libfftw2xf_$(prec)_$(compiler).a

ifeq ($(compiler),gnu)
   CC = gcc -D_GNU
   COPTS.ia32 = -m32
   COPTS.intel64 = -m64
   COPTS.DIAG = -Wall -Werror
else
   ifeq ($(compiler),pgi)
      CC = pgcc
      COPTS.ia32 = -tp px
      COPTS.intel64 = -tp x64
      COPTS.DIAG = 
   else
      override compiler = intel
      CC = icc
      COPTS.DIAG = -Wall -Werror
   endif
endif

COPTS_interface_ilp64 = -DMKL_ILP64

COPTS = $(COPTS.$(_IA)) $(COPTS.DIAG) $(COPTS_interface_$(interface))

objs    = $(addsuffix .o ,$(WRAP))
objects = $(addprefix $(obj_path)/,$(objs))

##-----------------------------------------------------------------------------
## Main targets

.PHONY: libia32 lib32 libintel64 libem64t

libia32 lib32:
	$(MAKE) -f $(MY_MAKEFILE) lib _IA=ia32

libintel64 libem64t:
	$(MAKE) -f $(MY_MAKEFILE) lib _IA=intel64

ifdef _IA
##-----------------------------------------------------------------------------
## Rules

.PHONY: lib mkobjdir library clean clean_obj

.SUFFIXES:
.SUFFIXES: .c .o

vpath %.c $(MKLROOT)/interfaces/fftw2xf/wrappers

lib: mkobjdir library

library: $(objects)
	-mkdir -p $(INSTALL_DIR)
	ar rs $(INSTALL_DIR)/$(INSTALL_LIBNAME) $^

$(obj_path)/%.o: %.c
	$(CC) $(COPTS) $(CFLAGS) $(CPPFLAGS) $(TARGET_ARCH) -c \
	  -D$(PRECISION) -I$(MKLROOT)/include -I$(MKLROOT)/include/fftw \
	  $< -o $@

mkobjdir:
	mkdir -p $(obj_path)

clean: clean_obj
	-rm -f $(INSTALL_DIR)/$(INSTALL_LIBNAME)

clean_obj:
	-rm -rf $(obj_path)

##-----------------------------------------------------------------------------
endif
