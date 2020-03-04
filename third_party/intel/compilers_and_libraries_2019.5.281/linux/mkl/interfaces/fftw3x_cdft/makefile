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

##  Content:
##      Makefile for Intel(R) MKL FFTW3X CDFT wrapper library.
##      This library allows to use Intel(R) MKL CDFT routines through MPI FFTW interface.
##******************************************************************************
help:
	@echo "Usage: make libintel64"
	@echo "            [mpi=intelmpi|mpich2|openmpi]"
	@echo "            [compiler=intel|gnu]"
	@echo "            [interface=lp64|ilp64]"
	@echo "            [mpidir=path]"
	@echo
	@echo "Targets:"
	@echo "   libintel64  - for Intel(R) 64 architecture"
	@echo
	@echo "mpi=intelmpi   - using Intel(R) MPI, default"
	@echo "mpi=mpich2     - using MPICH2"
	@echo "mpi=openmpi    - using OpenMPI"
	@echo
	@echo "compiler=intel - using Intel(R) C Compiler, default"
	@echo "compiler=gnu   - using GNU C compiler"
	@echo
	@echo "interface=lp64 - using 32-bit integers (only for Intel(R) 64), default"
	@echo "interface=ilp64- using 64-bit integers (only for Intel(R) 64)"
	@echo
	@echo "mpidir=path    - path to MPI installation directory. MPI scripts are taken"
	@echo "   from <mpidir>/bin or <mpidir>/<arch>/bin for IntelMPI and Intel(R) 64."
	@echo "   If this directory is in PATH you can omit mpidir parameter."
	@echo "   When using MPICH, make sure that MPICH was compiled by the same compiler"
	@echo "   as used to build examples."
	@echo
	@echo "Additional macros:"
	@echo "   MKLROOT - path to Intel(R) MKL root, default is ../.."
	@echo
	@echo "   INSTALL_DIR - location where Intel(R) MKL FFTW3X CDFT wrap library will be installed"
	@echo "                 Default is <MKLROOT>/lib/<arch>"
	@echo
	@echo "   INSTALL_LIBNAME"
	@echo "               - name of Intel(R) MKL FFTW3X CDFT wrap library will be installed"
	@echo "                 Default is libfftw3x_cdft.a"
	@echo
	@echo "   TARGET_ARCH=<flags>"
	@echo "               - defines additional compiler flags"
	@echo "                 Refer to the compiler documentation about CPU specific flags."
	@echo "                 Some compilers may need these flags to enable optimizations"
	@echo "                 for modern CPUs"
	@echo
	@echo "Set environment variables LD_LIBRARY_PATH and etc. properly before testing."
	
##------------------------------------------------------------------------------
## examples of using:
##
## make libintel64
##      - compile using Intel(R) MPI Library, Intel(R) C Compiler
##        and build library for Intel(R) 64 based applications
##
## make libintel64 mpi=mpich2 mpidir=/opt/mpich compiler=gnu
##      - compile using MPICH Library from /opt/mpich, GNU C compiler
##        and build library for Intel(R) 64 based applications
##------------------------------------------------------------------------------

include fftw3x_cdft.lst

## Please use the command line parameters to override the values below
MKLROOT = ../..
CFLAGS += -Wall -Werror -std=c99

ifndef mpi
    mpi = intelmpi
else
    ifeq (,$(findstring $(mpi),intelmpi mpich2 openmpi))
        $(error "Set mpi to one of: intelmpi mpich2 openmpi")
    endif
endif

ifndef compiler
    compiler = intel
else
    ifeq (,$(findstring $(compiler),intel gnu))
        $(error "Set compiler to one of: intel gnu")
    endif
endif

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

ifeq ($(mpi),intelmpi)
    ifdef mpidir
       _BD = $(mpidir)/$(_IA)/bin/
    endif
    ifeq ($(compiler),intel)
        _CS = $(_BD)mpiicc
    endif
    ifeq ($(compiler),gnu)
        _CS = $(_BD)mpicc
    endif
endif

ifeq ($(mpi),mpich2)
    ifdef mpidir
       _BD = $(mpidir)/bin/
    endif
    ifeq ($(compiler),intel)
        _CS = $(_BD)mpicc -cc=icc
    endif
    ifeq ($(compiler),gnu)
        _CS = $(_BD)mpicc -cc=gcc
    endif
endif

ifeq ($(mpi),openmpi)
    ifdef mpidir
       _BD = $(mpidir)/bin/
    endif
    ifeq ($(compiler),intel)
        _CS = OMPI_CC=icc $(_BD)mpicc
    endif
    ifeq ($(compiler),gnu)
        _CS = OMPI_CC=gcc $(_BD)mpicc
    endif
endif

ifdef INSTALL_LIBNAME
    WRAPLIB_FFTW3X_CDFT = $(INSTALL_LIBNAME).a
else
    WRAPLIB_FFTW3X_CDFT = libfftw3x_cdft$(ILP_EXT).a
endif

.PHONY: libintel64

libintel64:
	$(MAKE) clean mkobjdir wraplib ILP_EXT=$(ILP_EXT) _IA=intel64

##---------------------------------------------------------------------------------
## Nested makefile
##---------------------------------------------------------------------------------

ifdef _IA
    objs    = $(addsuffix .o ,$(WRAP))
    objs_f  = $(addsuffix _f.o ,$(WRAP))
    objects = $(addprefix $(obj_path)/,$(objs) $(objs_f))

    ifeq (,$(findstring x$(interface),x xlp64 xilp64))
        $(warning "Using interface=lp64 instead of unknown $(interface)")
        ILP_OPTS =
        ILP_EXT  = _lp64
    endif

.SUFFIXES:
.SUFFIXES: .c .o

vpath %.c wrappers

$(obj_path)/%.o: %.c
	$(_CS) -c $(CFLAGS) $(CPPFLAGS) $(TARGET_ARCH) $(ILP_OPTS) \
		-DMKL_DOUBLE -I$(MKLROOT)/include -I$(MKLROOT)/include/fftw $< -o $@

$(obj_path)/%_f.o: %.c
	$(_CS) -c $(CFLAGS) $(CPPFLAGS) $(TARGET_ARCH) $(ILP_OPTS) \
		-DMKL_SINGLE -I$(MKLROOT)/include -I$(MKLROOT)/include/fftw $< -o $@

wraplib: $(objects)
	$(AR) $(ARFLAGS) $(INSTALL_DIR)/$(WRAPLIB_FFTW3X_CDFT) $^

mkobjdir:
	-mkdir -p $(obj_path)
	-mkdir -p $(INSTALL_DIR)

clean:
	-rm -rf $(obj_path)
	-rm -f $(INSTALL_DIR)/$(WRAPLIB_FFTW3X_CDFT)

endif
