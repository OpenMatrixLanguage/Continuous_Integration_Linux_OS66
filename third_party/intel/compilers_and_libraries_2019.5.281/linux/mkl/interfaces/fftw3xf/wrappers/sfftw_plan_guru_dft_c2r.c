/*******************************************************************************
* Copyright 2005-2019 Intel Corporation.
*
* This software and the related documents are Intel copyrighted  materials,  and
* your use of  them is  governed by the  express license  under which  they were
* provided to you (License).  Unless the License provides otherwise, you may not
* use, modify, copy, publish, distribute,  disclose or transmit this software or
* the related documents without Intel's prior written permission.
*
* This software and the related documents  are provided as  is,  with no express
* or implied  warranties,  other  than those  that are  expressly stated  in the
* License.
*******************************************************************************/

/*
 *
 * sfftw_plan_guru_dft_c2r - FFTW3 Fortran 77 wrapper to Intel(R) MKL.
 *
 ******************************************************************************
 */

#include "fftw3_mkl_f77.h"

void
sfftw_plan_guru_dft_c2r(PLAN *p, INTEGER *rank, INTEGER *n, INTEGER *is,
                        INTEGER *os, INTEGER *howmany_rank, INTEGER *howmany_n,
                        INTEGER *howmany_is, INTEGER *howmany_os,
                        COMPLEX8 *in, REAL4 *out, INTEGER *flags)
{
    fftwf_iodim64 dims64[MKL_MAXRANK];
    fftwf_iodim64 howmany_dims64[MKL_ONE];
    int i;

    if (p == NULL || rank == NULL || n == NULL || flags == NULL)
        return;
    if (is == NULL || os == NULL) return;
    if (howmany_rank == NULL) return;
    if (*howmany_rank > 0 && (howmany_n == NULL || howmany_is == NULL || howmany_os == NULL)) return;

    *(MKL_INT64 *)p = 0;
    if (*rank > MKL_MAXRANK || *howmany_rank > MKL_ONE) return;

    for (i = 0; i < *rank; ++i)
    {
        dims64[i].n = n[*rank - i - 1];
        dims64[i].is = is[*rank - i - 1];
        dims64[i].os = os[*rank - i - 1];
    }
    for (i = 0; i < *howmany_rank; ++i)
    {
        howmany_dims64[i].n = howmany_n[*howmany_rank - i - 1];
        howmany_dims64[i].is = howmany_is[*howmany_rank - i - 1];
        howmany_dims64[i].os = howmany_os[*howmany_rank - i - 1];
    }
    *(fftwf_plan *)p =
        fftwf_plan_guru64_dft_c2r(*rank, dims64, *howmany_rank, howmany_dims64,
                                 in, out, *flags);
}
