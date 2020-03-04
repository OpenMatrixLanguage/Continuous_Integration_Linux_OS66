#===============================================================================
# Copyright 2004-2019 Intel Corporation.
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
##      Intel(R) Math Kernel Library Custom Shared Object builder
##
##******************************************************************************

help:
	@echo
	@echo "Custom Shared Object builder creates MKL custom library"
	@echo
	@echo "Usage: make <target> [<options>]"
	@echo
	@echo "  target"
	@echo "    (static builder: uses static Intel(R) MKL interface+threading+core,"
	@echo "                     and, possibly, cluster libraries)"
	@echo "      libia32    - for IA-32 architecture"
	@echo "      libintel64 - for Intel(R) 64 architecture"
	@echo "    help         - prints this help"
	@echo
	@echo "    <options>"
	@echo "        interface={lp64|ilp64} (for libintel64 only)"
	@echo "            Specifies programming interface for libintel64."
	@echo "            Default: lp64."
	@echo "        export=<file_name>"
	@echo "            The name of the file that contains the list of entry points"
	@echo "            to be included to the shared object."
	@echo "            Default: user_example_list (no extension)."
	@echo "        name=<so_name>"
	@echo "            The name of the shared object to be created. The extension .so will be added."
	@echo "            Default: mkl_custom."
	@echo "        xerbla=<err_handlr>"
	@echo "            The name of the object file that contains the user's error handler."
	@echo "            By the default native Intel(R) MKL XERBLA is used."
	@echo "        threading={parallel|sequential}"
	@echo "            Specifies whether to use Intel(R) MKL in the threaded or sequential mode."
	@echo "            Default: parallel."
	@echo "        parallel={intel|gnu} (for libia32 and libintel64)"
	@echo "            Specifies whether to use Intel OpenMP or GNU* OpenMP (for GNU compiler only)."
	@echo "            Default: intel."
	@echo "        cluster={yes|no} (for libintel64 only)"
	@echo "            Specifies whether Intel(R) MKL cluster components (BLACS, ScaLAPACK or/and CDFT)"
	@echo "            are needed to build the custom shared object."
	@echo "            Default: no."
	@echo "        blacs_mpi={intelmpi|openmpi|sgimpt}"
	@echo "            Specifies which pre-compiled Intel(R) MKL BLACS library to use. Ignored if 'cluster=no'."
	@echo "            'blacs_mpi' is also ignored if 'blacs_name' was specified."
	@echo "            Default: intelmpi."
	@echo "        blacs_name=<lib_name>"
	@echo "            Specifies the name of the custom Intel(R) MKL BLACS library to use (without .a prefix)."
	@echo "            Ignored if 'cluster=no'."
	@echo "            Default: libmkl_blacs_<blacs_mpi>_<interface>."
	@echo "        MKLROOT=<MKL_directory>"
	@echo "            Specifies the location of Intel(R) MKL libraries used to build the custom shared object."
	@echo "            Default: the Intel(R) MKL installation directory."
	@echo "        BLACSDIR=<BLACS_directory>"
	@echo "            Specifies the path to a custom Intel(R) MKL BLACS library. Ignored if 'cluster=no'."
	@echo "            Default: <MKL_directory>/lib/intel64"
	@echo
	@echo "Usage examples:"
	@echo
	@echo "  make libia32"
	@echo "    Creates mkl_custom.so for IA-32 architecture."
	@echo "    Function list is taken from the predefined file user_example_list."
	@echo "    The static-parallel Intel(R) MKL libraries are used to build mkl_custom.so."
	@echo "    Native Intel(R) MKL error handler is used."
	@echo
	@echo "  make libintel64 export=my_blas_list interface=ilp64 name=my_blas"
	@echo "    Creates my_blas.so for Intel(R) 64 architecture."
	@echo "    Function list is taken from the user file my_blas_list."
	@echo "    The static-parallel-ilp64 Intel(R) MKL libraries are used to build my_blas.so."
	@echo
	@echo "  make libintel64 cluster=yes export=cluster_example_list interface=ilp64 blacs_mpi=mpich name=my_cluster"
	@echo "    Creates my_cluster.so for Intel(R) 64 architecture with support of cluster libraries."
	@echo "    Function list is taken from the user file cluster_example_list."
	@echo

##------------------------------------------------------------------------------

ifndef MKLROOT
MKLROOT = ../..
endif

mklia32_libpath=$(MKLROOT)/lib/ia32
mklintel64_libpath=$(MKLROOT)/lib/intel64
compileria32_libpath=$(MKLROOT)/../compiler/lib/ia32
compilerintel64_libpath=$(MKLROOT)/../compiler/lib/intel64


#ifndef export
export=user_example_list
#endif

#ifndef name
name=mkl_custom
#endif

ifdef xerbla
XERBLA="$(xerbla)"
else
XERBLA=
endif

ifndef interface
interface=lp64
endif

ifneq ($(interface),ilp64)
ifneq ($(interface),lp64)
interface=lp64
endif
endif

ifndef threading
threading=parallel
endif

IFACE_COMP_PART=intel

ifeq ($(parallel),gnu)
IFACE_THREADING_PART=gnu
OMP_LIB=-lgomp
else
IFACE_THREADING_PART=intel
OMP_LIB=-liomp5
endif

IFACE_LIB=libmkl_$(IFACE_COMP_PART)_$(interface).a

ifeq ($(threading),sequential)
THREADING_LIB=libmkl_sequential.a
OMP_LIB=
else
THREADING_LIB=libmkl_$(IFACE_THREADING_PART)_thread.a
endif
OMP_LIB += -lpthread

CORE_LIB=libmkl_core.a
PURE_IFACE_LIB=-lmkl_rt

ifeq ($(cluster),yes)
ifndef blacs_mpi
blacs_mpi=intelmpi
endif

ifneq ($(blacs_name),)
ifndef BLACSDIR
BLACSDIR="$(MKLROOT)/lib/intel64"
endif
BLACS_LIB="$(BLACSDIR)/$(blacs_name).a"
else
BLACS_LIB="$(mklintel64_libpath)/libmkl_blacs_$(blacs_mpi)_$(interface).a"
endif
SCALAPACK_LIB="$(mklintel64_libpath)/libmkl_scalapack_$(interface).a"
CDFT_LIB="$(mklintel64_libpath)/libmkl_cdft_core.a"
else
BLACS_LIB=
SCALAPACK_LIB=
CDFT_LIB=
endif

SYSTEM_LIBS = -lm -ldl

libia32 ia32: check_export_file_name
	export LIBRARY_PATH=$(LIBRARY_PATH):$(LD_LIBRARY_PATH); \
	gcc -m32 -shared -Wl,-z,relro,-z,now -Bdynamic \
	$(XERBLA) $(addprefix -u ,$(shell grep -v '^[\#;]' "$(export)")) \
	-u mkl_serv_finalize -Wl,-fini=mkl_serv_finalize \
	-Wl,--start-group \
	"$(mklia32_libpath)/libmkl_intel.a" \
	"$(mklia32_libpath)/$(THREADING_LIB)" \
	"$(mklia32_libpath)/$(CORE_LIB)" \
	-Wl,--end-group \
	-L"$(compileria32_libpath)" $(OMP_LIB) $(SYSTEM_LIBS) \
	-o "$(name).so"

libintel64 intel64 em64t: check_export_file_name
	export LIBRARY_PATH=$(LIBRARY_PATH):$(LD_LIBRARY_PATH); \
	gcc -shared -Wl,-z,relro,-z,now -Bdynamic \
	$(XERBLA) $(addprefix -u ,$(shell grep -v '^[\#;]' "$(export)")) \
	-u mkl_serv_finalize -Wl,-fini=mkl_serv_finalize \
	-Wl,--start-group \
	$(SCALAPACK_LIB) $(CDFT_LIB) $(BLACS_LIB) \
	"$(mklintel64_libpath)/$(IFACE_LIB)" \
	"$(mklintel64_libpath)/$(THREADING_LIB)" \
	"$(mklintel64_libpath)/$(CORE_LIB)" \
	-Wl,--end-group \
	-L"$(compilerintel64_libpath)" $(OMP_LIB) $(SYSTEM_LIBS) \
	-o "$(name).so"

check_export_file_name: $(export)
